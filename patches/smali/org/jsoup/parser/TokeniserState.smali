.class abstract enum Lorg/jsoup/parser/TokeniserState;
.super Ljava/lang/Enum;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/TokeniserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusComment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusDoctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CdataSection:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Comment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndBang:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Data:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Doctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum EndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rawtext:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagOpen:Lorg/jsoup/parser/TokeniserState;

.field static final attributeDoubleValueCharsSorted:[C

.field static final attributeNameCharsSorted:[C

.field static final attributeSingleValueCharsSorted:[C

.field static final attributeValueUnquoted:[C

.field private static final eof:C = '\uffff'

.field static final nullChar:C = '\u0000'

.field private static final replacementChar:C = '\ufffd'

.field private static final replacementStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 69

    .line 9
    new-instance v0, Lorg/jsoup/parser/TokeniserState$1;

    const-string v1, "Data"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 33
    new-instance v1, Lorg/jsoup/parser/TokeniserState$2;

    const-string v3, "CharacterReferenceInData"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jsoup/parser/TokeniserState$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    .line 39
    new-instance v3, Lorg/jsoup/parser/TokeniserState$3;

    const-string v5, "Rcdata"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jsoup/parser/TokeniserState$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 64
    new-instance v5, Lorg/jsoup/parser/TokeniserState$4;

    const-string v7, "CharacterReferenceInRcdata"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jsoup/parser/TokeniserState$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    .line 69
    new-instance v7, Lorg/jsoup/parser/TokeniserState$5;

    const-string v9, "Rawtext"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jsoup/parser/TokeniserState$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 74
    new-instance v9, Lorg/jsoup/parser/TokeniserState$6;

    const-string v11, "ScriptData"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jsoup/parser/TokeniserState$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 79
    new-instance v11, Lorg/jsoup/parser/TokeniserState$7;

    const-string v13, "PLAINTEXT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jsoup/parser/TokeniserState$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    .line 97
    new-instance v13, Lorg/jsoup/parser/TokeniserState$8;

    const-string v15, "TagOpen"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jsoup/parser/TokeniserState$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 124
    new-instance v15, Lorg/jsoup/parser/TokeniserState$9;

    const-string v14, "EndTagOpen"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jsoup/parser/TokeniserState$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 143
    new-instance v14, Lorg/jsoup/parser/TokeniserState$10;

    const-string v12, "TagName"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jsoup/parser/TokeniserState$10;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    .line 183
    new-instance v12, Lorg/jsoup/parser/TokeniserState$11;

    const-string v10, "RcdataLessthanSign"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jsoup/parser/TokeniserState$11;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 202
    new-instance v10, Lorg/jsoup/parser/TokeniserState$12;

    const-string v8, "RCDATAEndTagOpen"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jsoup/parser/TokeniserState$12;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 215
    new-instance v8, Lorg/jsoup/parser/TokeniserState$13;

    const-string v6, "RCDATAEndTagName"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jsoup/parser/TokeniserState$13;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 261
    new-instance v6, Lorg/jsoup/parser/TokeniserState$14;

    const-string v4, "RawtextLessthanSign"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$14;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 272
    new-instance v4, Lorg/jsoup/parser/TokeniserState$15;

    const-string v2, "RawtextEndTagOpen"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/TokeniserState$15;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 277
    new-instance v2, Lorg/jsoup/parser/TokeniserState$16;

    const-string v6, "RawtextEndTagName"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$16;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 282
    new-instance v6, Lorg/jsoup/parser/TokeniserState$17;

    const-string v4, "ScriptDataLessthanSign"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$17;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 305
    new-instance v4, Lorg/jsoup/parser/TokeniserState$18;

    const-string v2, "ScriptDataEndTagOpen"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/TokeniserState$18;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 310
    new-instance v2, Lorg/jsoup/parser/TokeniserState$19;

    const-string v6, "ScriptDataEndTagName"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$19;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 315
    new-instance v6, Lorg/jsoup/parser/TokeniserState$20;

    const-string v4, "ScriptDataEscapeStart"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$20;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 325
    new-instance v4, Lorg/jsoup/parser/TokeniserState$21;

    const-string v2, "ScriptDataEscapeStartDash"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/jsoup/parser/TokeniserState$21;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 335
    new-instance v2, Lorg/jsoup/parser/TokeniserState$22;

    const-string v6, "ScriptDataEscaped"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$22;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 362
    new-instance v6, Lorg/jsoup/parser/TokeniserState$23;

    const-string v4, "ScriptDataEscapedDash"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/jsoup/parser/TokeniserState$23;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 390
    new-instance v2, Lorg/jsoup/parser/TokeniserState$24;

    const-string v4, "ScriptDataEscapedDashDash"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lorg/jsoup/parser/TokeniserState$24;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 421
    new-instance v4, Lorg/jsoup/parser/TokeniserState$25;

    const-string v6, "ScriptDataEscapedLessthanSign"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$25;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 437
    new-instance v2, Lorg/jsoup/parser/TokeniserState$26;

    const-string v6, "ScriptDataEscapedEndTagOpen"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$26;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 450
    new-instance v4, Lorg/jsoup/parser/TokeniserState$27;

    const-string v6, "ScriptDataEscapedEndTagName"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$27;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 455
    new-instance v2, Lorg/jsoup/parser/TokeniserState$28;

    const-string v6, "ScriptDataDoubleEscapeStart"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$28;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 460
    new-instance v4, Lorg/jsoup/parser/TokeniserState$29;

    const-string v6, "ScriptDataDoubleEscaped"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$29;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 487
    new-instance v2, Lorg/jsoup/parser/TokeniserState$30;

    const-string v6, "ScriptDataDoubleEscapedDash"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$30;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 514
    new-instance v4, Lorg/jsoup/parser/TokeniserState$31;

    const-string v6, "ScriptDataDoubleEscapedDashDash"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$31;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 544
    new-instance v2, Lorg/jsoup/parser/TokeniserState$32;

    const-string v6, "ScriptDataDoubleEscapedLessthanSign"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$32;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 555
    new-instance v4, Lorg/jsoup/parser/TokeniserState$33;

    const-string v6, "ScriptDataDoubleEscapeEnd"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$33;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    .line 560
    new-instance v2, Lorg/jsoup/parser/TokeniserState$34;

    const-string v6, "BeforeAttributeName"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$34;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 607
    new-instance v4, Lorg/jsoup/parser/TokeniserState$35;

    const-string v6, "AttributeName"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$35;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 651
    new-instance v2, Lorg/jsoup/parser/TokeniserState$36;

    const-string v6, "AfterAttributeName"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$36;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 696
    new-instance v4, Lorg/jsoup/parser/TokeniserState$37;

    const-string v6, "BeforeAttributeValue"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$37;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 745
    new-instance v2, Lorg/jsoup/parser/TokeniserState$38;

    const-string v6, "AttributeValue_doubleQuoted"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$38;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 778
    new-instance v4, Lorg/jsoup/parser/TokeniserState$39;

    const-string v6, "AttributeValue_singleQuoted"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$39;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 811
    new-instance v2, Lorg/jsoup/parser/TokeniserState$40;

    const-string v6, "AttributeValue_unquoted"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$40;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    .line 860
    new-instance v4, Lorg/jsoup/parser/TokeniserState$41;

    const-string v6, "AfterAttributeValue_quoted"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$41;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    .line 890
    new-instance v2, Lorg/jsoup/parser/TokeniserState$42;

    const-string v6, "SelfClosingStartTag"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$42;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 910
    new-instance v4, Lorg/jsoup/parser/TokeniserState$43;

    const-string v6, "BogusComment"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$43;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    .line 924
    new-instance v2, Lorg/jsoup/parser/TokeniserState$44;

    const-string v6, "MarkupDeclarationOpen"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$44;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    .line 944
    new-instance v4, Lorg/jsoup/parser/TokeniserState$45;

    const-string v6, "CommentStart"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$45;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    .line 972
    new-instance v2, Lorg/jsoup/parser/TokeniserState$46;

    const-string v6, "CommentStartDash"

    move-object/from16 v47, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$46;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 1000
    new-instance v4, Lorg/jsoup/parser/TokeniserState$47;

    const-string v6, "Comment"

    move-object/from16 v48, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$47;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 1022
    new-instance v2, Lorg/jsoup/parser/TokeniserState$48;

    const-string v6, "CommentEndDash"

    move-object/from16 v49, v4

    const/16 v4, 0x2f

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$48;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    .line 1045
    new-instance v4, Lorg/jsoup/parser/TokeniserState$49;

    const-string v6, "CommentEnd"

    move-object/from16 v50, v2

    const/16 v2, 0x30

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$49;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState;

    .line 1078
    new-instance v2, Lorg/jsoup/parser/TokeniserState$50;

    const-string v6, "CommentEndBang"

    move-object/from16 v51, v4

    const/16 v4, 0x31

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$50;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    .line 1106
    new-instance v4, Lorg/jsoup/parser/TokeniserState$51;

    const-string v6, "Doctype"

    move-object/from16 v52, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$51;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    .line 1133
    new-instance v2, Lorg/jsoup/parser/TokeniserState$52;

    const-string v6, "BeforeDoctypeName"

    move-object/from16 v53, v4

    const/16 v4, 0x33

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$52;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1168
    new-instance v4, Lorg/jsoup/parser/TokeniserState$53;

    const-string v6, "DoctypeName"

    move-object/from16 v54, v2

    const/16 v2, 0x34

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$53;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1203
    new-instance v2, Lorg/jsoup/parser/TokeniserState$54;

    const-string v6, "AfterDoctypeName"

    move-object/from16 v55, v4

    const/16 v4, 0x35

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$54;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1231
    new-instance v4, Lorg/jsoup/parser/TokeniserState$55;

    const-string v6, "AfterDoctypePublicKeyword"

    move-object/from16 v56, v2

    const/16 v2, 0x36

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$55;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 1271
    new-instance v2, Lorg/jsoup/parser/TokeniserState$56;

    const-string v6, "BeforeDoctypePublicIdentifier"

    move-object/from16 v57, v4

    const/16 v4, 0x37

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$56;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1308
    new-instance v4, Lorg/jsoup/parser/TokeniserState$57;

    const-string v6, "DoctypePublicIdentifier_doubleQuoted"

    move-object/from16 v58, v2

    const/16 v2, 0x38

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$57;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1336
    new-instance v2, Lorg/jsoup/parser/TokeniserState$58;

    const-string v6, "DoctypePublicIdentifier_singleQuoted"

    move-object/from16 v59, v4

    const/16 v4, 0x39

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$58;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1364
    new-instance v4, Lorg/jsoup/parser/TokeniserState$59;

    const-string v6, "AfterDoctypePublicIdentifier"

    move-object/from16 v60, v2

    const/16 v2, 0x3a

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$59;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1402
    new-instance v2, Lorg/jsoup/parser/TokeniserState$60;

    const-string v6, "BetweenDoctypePublicAndSystemIdentifiers"

    move-object/from16 v61, v4

    const/16 v4, 0x3b

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$60;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

    .line 1439
    new-instance v4, Lorg/jsoup/parser/TokeniserState$61;

    const-string v6, "AfterDoctypeSystemKeyword"

    move-object/from16 v62, v2

    const/16 v2, 0x3c

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$61;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 1479
    new-instance v2, Lorg/jsoup/parser/TokeniserState$62;

    const-string v6, "BeforeDoctypeSystemIdentifier"

    move-object/from16 v63, v4

    const/16 v4, 0x3d

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$62;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1516
    new-instance v4, Lorg/jsoup/parser/TokeniserState$63;

    const-string v6, "DoctypeSystemIdentifier_doubleQuoted"

    move-object/from16 v64, v2

    const/16 v2, 0x3e

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$63;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1544
    new-instance v2, Lorg/jsoup/parser/TokeniserState$64;

    const-string v6, "DoctypeSystemIdentifier_singleQuoted"

    move-object/from16 v65, v4

    const/16 v4, 0x3f

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$64;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1572
    new-instance v4, Lorg/jsoup/parser/TokeniserState$65;

    const-string v6, "AfterDoctypeSystemIdentifier"

    move-object/from16 v66, v2

    const/16 v2, 0x40

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$65;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1599
    new-instance v2, Lorg/jsoup/parser/TokeniserState$66;

    const-string v6, "BogusDoctype"

    move-object/from16 v67, v4

    const/16 v4, 0x41

    invoke-direct {v2, v6, v4}, Lorg/jsoup/parser/TokeniserState$66;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    .line 1617
    new-instance v4, Lorg/jsoup/parser/TokeniserState$67;

    const-string v6, "CdataSection"

    move-object/from16 v68, v2

    const/16 v2, 0x42

    invoke-direct {v4, v6, v2}, Lorg/jsoup/parser/TokeniserState$67;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    const/16 v2, 0x43

    new-array v2, v2, [Lorg/jsoup/parser/TokeniserState;

    const/4 v6, 0x0

    .line 8
    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v39, v2, v0

    const/16 v0, 0x25

    aput-object v40, v2, v0

    const/16 v0, 0x26

    aput-object v41, v2, v0

    const/16 v0, 0x27

    aput-object v42, v2, v0

    const/16 v0, 0x28

    aput-object v43, v2, v0

    const/16 v0, 0x29

    aput-object v44, v2, v0

    const/16 v0, 0x2a

    aput-object v45, v2, v0

    const/16 v0, 0x2b

    aput-object v46, v2, v0

    const/16 v0, 0x2c

    aput-object v47, v2, v0

    const/16 v0, 0x2d

    aput-object v48, v2, v0

    const/16 v0, 0x2e

    aput-object v49, v2, v0

    const/16 v0, 0x2f

    aput-object v50, v2, v0

    const/16 v0, 0x30

    aput-object v51, v2, v0

    const/16 v0, 0x31

    aput-object v52, v2, v0

    const/16 v0, 0x32

    aput-object v53, v2, v0

    const/16 v0, 0x33

    aput-object v54, v2, v0

    const/16 v0, 0x34

    aput-object v55, v2, v0

    const/16 v0, 0x35

    aput-object v56, v2, v0

    const/16 v0, 0x36

    aput-object v57, v2, v0

    const/16 v0, 0x37

    aput-object v58, v2, v0

    const/16 v0, 0x38

    aput-object v59, v2, v0

    const/16 v0, 0x39

    aput-object v60, v2, v0

    const/16 v0, 0x3a

    aput-object v61, v2, v0

    const/16 v0, 0x3b

    aput-object v62, v2, v0

    const/16 v0, 0x3c

    aput-object v63, v2, v0

    const/16 v0, 0x3d

    aput-object v64, v2, v0

    const/16 v0, 0x3e

    aput-object v65, v2, v0

    const/16 v0, 0x3f

    aput-object v66, v2, v0

    const/16 v0, 0x40

    aput-object v67, v2, v0

    const/16 v0, 0x41

    aput-object v68, v2, v0

    const/16 v0, 0x42

    aput-object v4, v2, v0

    sput-object v2, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    const v0, 0xfffd

    .line 1639
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x26s
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x22s
        0x26s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x27s
        0x2fs
        0x3cs
        0x3ds
        0x3es
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x26s
        0x27s
        0x3cs
        0x3ds
        0x3es
        0x60s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lorg/jsoup/parser/TokeniserState;->readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readRawData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;->handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method private static handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1726
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p1

    .line 1728
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void

    .line 1733
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 1749
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 1750
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1742
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "script"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1743
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1745
    :cond_2
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1746
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    :goto_1
    return-void
.end method

.method private static handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1647
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p1

    .line 1649
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 1650
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1655
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1656
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    .line 1673
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1669
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 1670
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 1666
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 1663
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1681
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "</"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_1
    return-void
.end method

.method private static readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1707
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    .line 1709
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_0

    .line 1711
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit([I)V

    .line 1712
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method private static readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1716
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1717
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    .line 1718
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_0
    const-string p1, "</"

    .line 1720
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method

.method private static readRawData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1687
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 p2, 0x3c

    if-eq v0, p2, :cond_1

    const p2, 0xffff

    if-eq v0, p2, :cond_0

    .line 1700
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeRawData()Ljava/lang/String;

    move-result-object p1

    .line 1701
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_0

    .line 1697
    :cond_0
    new-instance p1, Lorg/jsoup/parser/Token$EOF;

    invoke-direct {p1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    .line 1689
    :cond_1
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1692
    :cond_2
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1693
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const p1, 0xfffd

    .line 1694
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/TokeniserState;
    .locals 1

    const-class v0, Lorg/jsoup/parser/TokeniserState;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/TokeniserState;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/TokeniserState;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 8
    invoke-virtual {v0}, [Lorg/jsoup/parser/TokeniserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/TokeniserState;

    return-object v0
.end method


# virtual methods
.method abstract read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
.end method
