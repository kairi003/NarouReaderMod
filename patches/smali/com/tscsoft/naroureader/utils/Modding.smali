.class public Lcom/tscsoft/naroureader/utils/Modding;
.super Ljava/lang/Object;
.source "Modding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastIndexPageHtml(Ljava/lang/String;Lcom/tscsoft/naroureader/http/HttpGet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 85
    :cond_0
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    const-string v1, "a.novelview_pager-last[href]"

    .line 86
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 88
    :cond_1
    new-instance p0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/tscsoft/naroureader/http/HttpGet;->getActualUrl()Ljava/net/URL;

    move-result-object v1

    const-string v2, "href"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NarouModding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tscsoft/naroureader/http/HttpGet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patchNovelHtml(Ljava/lang/String;Lcom/tscsoft/naroureader/http/HttpGet;Lcom/tscsoft/naroureader/beans/ListBean;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "patchNovelHtml()"

    const-string v1, "NarouModding"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "listBean: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "listBean.url: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "listBean.workMode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->getWorkMode()Lcom/tscsoft/naroureader/services/ServiceItem$WorkMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "listBean.prevAllNo: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->getPrevAllNo()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->isShort()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->getAllNo()I

    move-result v0

    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    goto/16 :goto_2

    .line 28
    :cond_0
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    const-string v3, ".index_box"

    .line 29
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-nez v4, :cond_1

    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->getPrevAllNo()I

    move-result p0

    const/4 v5, 0x1

    sub-int/2addr p0, v5

    const/4 v6, 0x0

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-int/2addr p0, v2

    add-int/2addr p0, v5

    .line 33
    invoke-static {}, Lcom/tscsoft/naroureader/settings/GS;->gs()Lcom/tscsoft/naroureader/settings/GS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tscsoft/naroureader/settings/GS;->needMinIndexUpdate()Z

    move-result v2

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pageNo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "needMinIndexUpdate: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p2}, Lcom/tscsoft/naroureader/beans/ListBean;->getWorkMode()Lcom/tscsoft/naroureader/services/ServiceItem$WorkMode;

    move-result-object p2

    sget-object v2, Lcom/tscsoft/naroureader/services/ServiceItem$WorkMode;->FullCheck:Lcom/tscsoft/naroureader/services/ServiceItem$WorkMode;

    if-ne p2, v2, :cond_2

    if-le p0, v5, :cond_2

    .line 37
    new-instance p2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/tscsoft/naroureader/http/HttpGet;->getActualUrl()Ljava/net/URL;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "?p="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Load start from: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tscsoft/naroureader/http/HttpGet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    :cond_2
    const-string p0, "a.novelview_pager-next[href]"

    .line 43
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lcom/tscsoft/naroureader/http/HttpGet;->getActualUrl()Ljava/net/URL;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_5

    .line 47
    new-instance v5, Ljava/net/URL;

    const-string v6, "href"

    invoke-virtual {p2, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, v2, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Fetch: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Reset: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tscsoft/naroureader/http/HttpGet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Get HTML"

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Lcom/tscsoft/naroureader/http/HttpGet;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p2

    .line 61
    invoke-virtual {p2, v3}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Element;->append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 65
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p2

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    throw p0

    .line 67
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static switchViewerMode(Lcom/tscsoft/naroureader/presenters/ViewerActivityPresenter;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/tscsoft/naroureader/settings/GS;->gs()Lcom/tscsoft/naroureader/settings/GS;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/tscsoft/naroureader/utils/Modding$1;->$SwitchMap$com$tscsoft$naroureader$settings$ViewerSetting$ViewMode:[I

    invoke-virtual {v0}, Lcom/tscsoft/naroureader/settings/GS;->getViewerMode()Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    sget-object v1, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->HorizontalScroll:Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;

    invoke-virtual {v0, v1}, Lcom/tscsoft/naroureader/settings/GS;->setViewerMode(Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object v1, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->VerticalPaging:Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;

    invoke-virtual {v0, v1}, Lcom/tscsoft/naroureader/settings/GS;->setViewerMode(Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/tscsoft/naroureader/presenters/ViewerActivityPresenter;->onViewerPreferenceReload()V

    return-void
.end method
