.class public Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field private static final AttributeEvals:[Ljava/lang/String;

.field private static final NTH_AB:Ljava/util/regex/Pattern;

.field private static final NTH_B:Ljava/util/regex/Pattern;

.field private static final combinators:[Ljava/lang/String;


# instance fields
.field private evals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "~"

    const-string v1, " "

    const-string v2, ","

    const-string v3, ">"

    const-string v4, "+"

    .line 18
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    const-string v5, "*="

    const-string v6, "~="

    .line 19
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    const/4 v1, 0x2

    .line 296
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    .line 297
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    return-void
.end method

.method private allElements()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 279
    new-instance v1, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byAttribute()V
    .locals 4

    .line 245
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 250
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "^"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 252
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeStarting;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 254
    new-instance v2, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {v2, v1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string v2, "="

    .line 256
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 257
    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string v2, "!="

    .line 259
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 260
    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "^="

    .line 262
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 263
    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "$="

    .line 265
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 266
    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v2, "*="

    .line 268
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 269
    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v2, "~="

    .line 271
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 272
    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 274
    :cond_7
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private byClass()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 220
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 222
    new-instance v2, Lorg/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byId()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 214
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 216
    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byTag()V
    .locals 8

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 229
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    const-string v1, "*|"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 234
    new-instance v4, Lorg/jsoup/select/CombiningEvaluator$Or;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jsoup/select/Evaluator;

    new-instance v6, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v6, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lorg/jsoup/select/Evaluator$TagEndsWith;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/jsoup/select/Evaluator$TagEndsWith;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    aput-object v6, v5, v0

    invoke-direct {v4, v5}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "|"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 240
    new-instance v2, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private combinator(C)V
    .locals 10

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 85
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 86
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeSubQuery()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 96
    instance-of v5, v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz v5, :cond_1

    if-eq p1, v2, :cond_1

    .line 97
    move-object v5, v1

    check-cast v5, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v5}, Lorg/jsoup/select/CombiningEvaluator$Or;->rightMostEvaluator()Lorg/jsoup/select/Evaluator;

    move-result-object v5

    move v6, v4

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v1, v5}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    :cond_1
    move-object v5, v1

    move v6, v3

    :goto_0
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 104
    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/16 v7, 0x3e

    const/4 v8, 0x2

    if-ne p1, v7, :cond_2

    .line 108
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    aput-object v0, v2, v3

    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;

    invoke-direct {v0, v1}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_1

    :cond_2
    const/16 v7, 0x20

    if-ne p1, v7, :cond_3

    .line 110
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    aput-object v0, v2, v3

    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Parent;

    invoke-direct {v0, v1}, Lorg/jsoup/select/StructuralEvaluator$Parent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_1

    :cond_3
    const/16 v7, 0x2b

    if-ne p1, v7, :cond_4

    .line 112
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    aput-object v0, v2, v3

    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {v0, v1}, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_1

    :cond_4
    const/16 v7, 0x7e

    if-ne p1, v7, :cond_5

    .line 114
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    aput-object v0, v2, v3

    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {v0, v1}, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_8

    .line 117
    instance-of p1, v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz p1, :cond_6

    .line 118
    check-cast v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 119
    invoke-virtual {v1, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    move-object p1, v1

    goto :goto_1

    .line 121
    :cond_6
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-direct {p1}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>()V

    .line 122
    invoke-virtual {p1, v1}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    .line 123
    invoke-virtual {p1, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    :goto_1
    if-eqz v6, :cond_7

    .line 131
    move-object v0, v5

    check-cast v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/CombiningEvaluator$Or;->replaceRightMostEvaluator(Lorg/jsoup/select/Evaluator;)V

    goto :goto_2

    :cond_7
    move-object v5, p1

    :goto_2
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 133
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 128
    :cond_8
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown combinator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private consumeIndex()I
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ")"

    .line 333
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private consumeSubQuery()Ljava/lang/String;
    .locals 5

    .line 137
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 138
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "("

    .line 139
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x28

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "["

    .line 141
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 146
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 148
    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private contains(Z)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":contains"

    .line 348
    :goto_0
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    .line 349
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    .line 350
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 352
    new-instance v1, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 354
    new-instance v1, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private containsData()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":containsData"

    .line 359
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    .line 360
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":containsData(text) query must not be empty"

    .line 361
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 362
    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsData;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cssNthChild(ZZ)V
    .locals 8

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ")"

    .line 300
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    .line 301
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lorg/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    .line 302
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    .line 304
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "even"

    .line 307
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v5, v6

    goto :goto_2

    .line 310
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    .line 311
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/4 v2, 0x4

    .line 312
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    move v4, v0

    goto :goto_2

    .line 313
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 315
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v6

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 321
    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthLastOfType;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 323
    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthOfType;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 326
    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthLastChild;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 328
    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthChild;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    .line 317
    :cond_8
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string p2, "Could not parse nth-index \'%s\': unexpected format"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private findElements()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "#"

    .line 152
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byId()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "."

    .line 154
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byClass()V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 156
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "["

    .line 158
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byAttribute()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*"

    .line 160
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->allElements()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":lt("

    .line 162
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexLessThan()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":gt("

    .line 164
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexGreaterThan()V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":eq("

    .line 166
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexEquals()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":has("

    .line 168
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 169
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->has()V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":contains("

    .line 170
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 171
    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":containsOwn("

    .line 172
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 173
    invoke-direct {p0, v2}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":containsData("

    .line 174
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 175
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->containsData()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":matches("

    .line 176
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":matchesOwn("

    .line 178
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    invoke-direct {p0, v2}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":not("

    .line 180
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->not()V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":nth-child("

    .line 182
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    invoke-direct {p0, v1, v1}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":nth-last-child("

    .line 184
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 185
    invoke-direct {p0, v2, v1}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":nth-of-type("

    .line 186
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 187
    invoke-direct {p0, v1, v2}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":nth-last-of-type("

    .line 188
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 189
    invoke-direct {p0, v2, v2}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":first-child"

    .line 190
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 191
    new-instance v1, Lorg/jsoup/select/Evaluator$IsFirstChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":last-child"

    .line 192
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 193
    new-instance v1, Lorg/jsoup/select/Evaluator$IsLastChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsLastChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":first-of-type"

    .line 194
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 195
    new-instance v1, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":last-of-type"

    .line 196
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 197
    new-instance v1, Lorg/jsoup/select/Evaluator$IsLastOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":only-child"

    .line 198
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 199
    new-instance v1, Lorg/jsoup/select/Evaluator$IsOnlyChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_17
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":only-of-type"

    .line 200
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 201
    new-instance v1, Lorg/jsoup/select/Evaluator$IsOnlyOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":empty"

    .line 202
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 203
    new-instance v1, Lorg/jsoup/select/Evaluator$IsEmpty;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsEmpty;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_19
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":root"

    .line 204
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 205
    new-instance v1, Lorg/jsoup/select/Evaluator$IsRoot;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matchText"

    .line 206
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 207
    new-instance v1, Lorg/jsoup/select/Evaluator$MatchText;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$MatchText;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_1b
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v2, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 157
    :cond_1c
    :goto_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byTag()V

    :goto_1
    return-void
.end method

.method private has()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":has"

    .line 340
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    .line 341
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    .line 342
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 343
    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Has;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/StructuralEvaluator$Has;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexEquals()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 292
    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexGreaterThan()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 288
    new-instance v1, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexLessThan()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 284
    new-instance v1, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private matches(Z)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":matches"

    .line 367
    :goto_0
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    .line 368
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    .line 369
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 372
    new-instance v1, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 374
    new-instance v1, Lorg/jsoup/select/Evaluator$Matches;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private not()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":not"

    .line 379
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    .line 380
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    .line 381
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 383
    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/StructuralEvaluator$Not;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 44
    :try_start_0
    new-instance v0, Lorg/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->parse()Lorg/jsoup/select/Evaluator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method parse()Lorg/jsoup/select/Evaluator;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 56
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v1, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 59
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v1}, Lorg/jsoup/select/StructuralEvaluator$Root;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 60
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    invoke-direct {p0, v0}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    :goto_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 65
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 67
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v0

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 70
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    invoke-direct {p0, v0}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x20

    .line 72
    invoke-direct {p0, v0}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    const/4 v1, 0x0

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    return-object v0

    .line 81
    :cond_4
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
