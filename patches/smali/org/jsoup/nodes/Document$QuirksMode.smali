.class public final enum Lorg/jsoup/nodes/Document$QuirksMode;
.super Ljava/lang/Enum;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuirksMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/nodes/Document$QuirksMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/nodes/Document$QuirksMode;

.field public static final enum limitedQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

.field public static final enum noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

.field public static final enum quirks:Lorg/jsoup/nodes/Document$QuirksMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 583
    new-instance v0, Lorg/jsoup/nodes/Document$QuirksMode;

    const-string v1, "noQuirks"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Document$QuirksMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    new-instance v1, Lorg/jsoup/nodes/Document$QuirksMode;

    const-string v2, "quirks"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jsoup/nodes/Document$QuirksMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    new-instance v2, Lorg/jsoup/nodes/Document$QuirksMode;

    const-string v3, "limitedQuirks"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jsoup/nodes/Document$QuirksMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/nodes/Document$QuirksMode;->limitedQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    filled-new-array {v0, v1, v2}, [Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->$VALUES:[Lorg/jsoup/nodes/Document$QuirksMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 582
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    const-class v0, Lorg/jsoup/nodes/Document$QuirksMode;

    .line 582
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->$VALUES:[Lorg/jsoup/nodes/Document$QuirksMode;

    .line 582
    invoke-virtual {v0}, [Lorg/jsoup/nodes/Document$QuirksMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method
