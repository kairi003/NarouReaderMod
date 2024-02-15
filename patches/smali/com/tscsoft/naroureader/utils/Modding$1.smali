.class synthetic Lcom/tscsoft/naroureader/utils/Modding$1;
.super Ljava/lang/Object;
.source "Modding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tscsoft/naroureader/utils/Modding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tscsoft$naroureader$settings$ViewerSetting$ViewMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    invoke-static {}, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->values()[Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tscsoft/naroureader/utils/Modding$1;->$SwitchMap$com$tscsoft$naroureader$settings$ViewerSetting$ViewMode:[I

    :try_start_0
    sget-object v1, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->HorizontalScroll:Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;

    invoke-virtual {v1}, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/tscsoft/naroureader/utils/Modding$1;->$SwitchMap$com$tscsoft$naroureader$settings$ViewerSetting$ViewMode:[I

    sget-object v1, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->VerticalPaging:Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;

    invoke-virtual {v1}, Lcom/tscsoft/naroureader/settings/ViewerSetting$ViewMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
