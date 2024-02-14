.class public Lorg/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Attributes$Dataset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final Empty:[Ljava/lang/String;

.field private static final EmptyString:Ljava/lang/String; = ""

.field private static final GrowthFactor:I = 0x2

.field private static final InitialCapacity:I = 0x2

.field static final InternalPrefix:C = '/'

.field static final NotFound:I = -0x1

.field protected static final dataPrefix:Ljava/lang/String; = "data-"


# instance fields
.field keys:[Ljava/lang/String;

.field private size:I

.field vals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/jsoup/nodes/Attributes;->Empty:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sget-object v0, Lorg/jsoup/nodes/Attributes;->Empty:[Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Attributes;)I
    .locals 0

    .line 34
    iget p0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return p0
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Attributes;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/jsoup/nodes/Attributes;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lorg/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkCapacity(I)V
    .locals 3

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 54
    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/2addr v2, v1

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    .line 62
    :goto_1
    invoke-static {v0, p1}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 63
    invoke-static {v0, p1}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static checkNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 68
    new-array v0, p1, [Ljava/lang/String;

    .line 69
    array-length v1, p0

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static dataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private indexOfKeyIgnoreCase(Ljava/lang/String;)I
    .locals 2

    .line 84
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 86
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static internalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isInternalKey(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private remove(I)V
    .locals 4

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    .line 188
    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 189
    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget p1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 192
    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 193
    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 123
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 124
    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 125
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return-object p0
.end method

.method public addAll(Lorg/jsoup/nodes/Attributes;)V
    .locals 2

    .line 279
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 281
    iget v1, p1, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 283
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 285
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 327
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    new-instance v2, Lorg/jsoup/nodes/Attribute;

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 330
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Attributes;
    .locals 3

    .line 416
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 420
    iput v1, v0, Lorg/jsoup/nodes/Attributes;->size:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 421
    invoke-static {v1, v2}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 422
    invoke-static {v1, v2}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dataset()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$Dataset;-><init>(Lorg/jsoup/nodes/Attributes;Lorg/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public deduplicate(Lorg/jsoup/parser/ParseSettings;)I
    .locals 6

    .line 441
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 443
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    move-result p1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 445
    array-length v2, v2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 446
    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 447
    aget-object v5, v4, v3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 449
    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 451
    invoke-direct {p0, v3}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Attributes;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 395
    iget v2, p1, Lorg/jsoup/nodes/Attributes;->size:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 396
    iget-object v2, p1, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 397
    iget-object p1, p1, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 105
    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 115
    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasDeclaredValueForKey(Ljava/lang/String;)Z
    .locals 1

    .line 240
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 241
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasDeclaredValueForKeyIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 250
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 251
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 222
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 231
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 407
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 408
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public html()Ljava/lang/String;
    .locals 3

    .line 349
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 361
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 365
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 366
    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 367
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 370
    invoke-static {v2, v3, p2}, Lorg/jsoup/nodes/Attribute;->shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "=\""

    .line 371
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v5, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 372
    invoke-static/range {v4 .. v9}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    const/16 v2, 0x22

    .line 373
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method indexOfKey(Ljava/lang/String;)I
    .locals 2

    .line 75
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 77
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Lorg/jsoup/nodes/Attributes$1;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public normalize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 431
    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 2

    .line 137
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 140
    aput-object p2, p1, v0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lorg/jsoup/nodes/Attributes;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;
    .locals 2

    .line 177
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 179
    iput-object p0, p1, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    .line 149
    aput-object p2, v1, v0

    iget-object p2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 150
    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 151
    aput-object p1, p2, v0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 201
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    :cond_0
    return-void
.end method

.method public removeIgnoreCase(Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 261
    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
