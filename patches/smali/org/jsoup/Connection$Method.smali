.class public final enum Lorg/jsoup/Connection$Method;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/Connection$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/Connection$Method;

.field public static final enum DELETE:Lorg/jsoup/Connection$Method;

.field public static final enum GET:Lorg/jsoup/Connection$Method;

.field public static final enum HEAD:Lorg/jsoup/Connection$Method;

.field public static final enum OPTIONS:Lorg/jsoup/Connection$Method;

.field public static final enum PATCH:Lorg/jsoup/Connection$Method;

.field public static final enum POST:Lorg/jsoup/Connection$Method;

.field public static final enum PUT:Lorg/jsoup/Connection$Method;

.field public static final enum TRACE:Lorg/jsoup/Connection$Method;


# instance fields
.field private final hasBody:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 34
    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    new-instance v1, Lorg/jsoup/Connection$Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    new-instance v3, Lorg/jsoup/Connection$Method;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lorg/jsoup/Connection$Method;->PUT:Lorg/jsoup/Connection$Method;

    new-instance v5, Lorg/jsoup/Connection$Method;

    const-string v6, "DELETE"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lorg/jsoup/Connection$Method;->DELETE:Lorg/jsoup/Connection$Method;

    new-instance v6, Lorg/jsoup/Connection$Method;

    const-string v7, "PATCH"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lorg/jsoup/Connection$Method;->PATCH:Lorg/jsoup/Connection$Method;

    new-instance v7, Lorg/jsoup/Connection$Method;

    const-string v4, "HEAD"

    const/4 v8, 0x5

    invoke-direct {v7, v4, v8, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    new-instance v8, Lorg/jsoup/Connection$Method;

    const-string v4, "OPTIONS"

    const/4 v9, 0x6

    invoke-direct {v8, v4, v9, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lorg/jsoup/Connection$Method;->OPTIONS:Lorg/jsoup/Connection$Method;

    new-instance v9, Lorg/jsoup/Connection$Method;

    const-string v4, "TRACE"

    const/4 v10, 0x7

    invoke-direct {v9, v4, v10, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lorg/jsoup/Connection$Method;->TRACE:Lorg/jsoup/Connection$Method;

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    filled-new-array/range {v0 .. v7}, [Lorg/jsoup/Connection$Method;

    move-result-object v0

    sput-object v0, Lorg/jsoup/Connection$Method;->$VALUES:[Lorg/jsoup/Connection$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/jsoup/Connection$Method;->hasBody:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;
    .locals 1

    const-class v0, Lorg/jsoup/Connection$Method;

    .line 33
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/Connection$Method;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/Connection$Method;
    .locals 1

    sget-object v0, Lorg/jsoup/Connection$Method;->$VALUES:[Lorg/jsoup/Connection$Method;

    .line 33
    invoke-virtual {v0}, [Lorg/jsoup/Connection$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/Connection$Method;

    return-object v0
.end method


# virtual methods
.method public final hasBody()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/Connection$Method;->hasBody:Z

    return v0
.end method
