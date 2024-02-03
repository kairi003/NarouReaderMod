package com.tscsoft.naroureader.http;

import java.net.URL;

public abstract class HttpGet {
    public static String USER_AGENT;
    public abstract URL getActualUrl();
    public abstract String get(String url);
    public abstract boolean isSuccessful();
}
