package com.tscsoft.naroureader.utils;

import android.text.TextUtils;
import android.util.Log;

import com.tscsoft.naroureader.beans.ListBean;
import com.tscsoft.naroureader.http.HttpGet;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.IOException;
import java.net.URL;

public class Modding {
    public static String patchNovelHtml(String baseHtml, HttpGet httpGet, ListBean listBean) throws IOException, InterruptedException {
        Log.d("NarouModding", "patchNovelHtml: " + listBean.getUrl());
        Document baseDoc = Jsoup.parse(baseHtml);
        Element baseIndexBox = baseDoc.selectFirst(".index_box");
        if (baseIndexBox == null) return baseHtml;

        Element nextPager = baseDoc.selectFirst("a.novelview_pager-next[href]");
        URL url = httpGet.getActualUrl();

        while (nextPager != null) {
            url = new URL(url, nextPager.attr("href"));
            Log.d("NarouModding", "Fetch: " + url);
            Log.d("NarouModding", "Reset: " + httpGet);
            String html;
            try {
                html = httpGet.get(url.toExternalForm());
            } catch (Exception e) {
                Log.e("NarouModding", e.toString());
                throw e;
            }
            Log.d("NarouModding", "Get HTML");
            if (!httpGet.isSuccessful() || TextUtils.isEmpty(html))
                break;
            Document doc = Jsoup.parse(html);
            Element indexBox = doc.selectFirst(".index_box");
            if (indexBox == null)
                break;
            baseIndexBox.append(indexBox.html());
            nextPager = doc.selectFirst("a.novelview_pager-next[href]");
        }
        return baseDoc.outerHtml();
    }
}
