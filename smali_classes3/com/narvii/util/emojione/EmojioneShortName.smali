.class public Lcom/narvii/util/emojione/EmojioneShortName;
.super Ljava/lang/Object;
.source "EmojioneShortName.java"


# static fields
.field private static final _shortNameToUnicode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final shortNameToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    .line 14
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x1f4af

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "100"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f522

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "1234"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f600

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "grinning"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f601

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "grin"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f602

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "joy"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f923

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "rofl"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f603

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smiley"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f604

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smile"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f605

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sweat_smile"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f606

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "laughing"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f609

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "wink"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f60a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "blush"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f60b

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "yum"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f60e

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sunglasses"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f60d

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "heart_eyes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f618

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "kissing_heart"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f617

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "kissing"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f619

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "kissing_smiling_eyes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f61a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "kissing_closed_eyes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const/16 v5, 0x263a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "relaxed"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f642

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "slight_smile"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f917

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "hugging"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f914

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "thinking"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f610

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "neutral_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f611

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "expressionless"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f636

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "no_mouth"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f644

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "rolling_eyes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f60f

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smirk"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f623

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "persevere"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f625

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "disappointed_relieved"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f62e

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "open_mouth"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f910

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "zipper_mouth"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f62f

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "hushed"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f62a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sleepy"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f62b

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "tired_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f634

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sleeping"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f60c

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "relieved"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f913

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "nerd"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f61b

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "stuck_out_tongue"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f61c

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "stuck_out_tongue_winking_eye"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f61d

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "stuck_out_tongue_closed_eyes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f924

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "drooling_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f612

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "unamused"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f613

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sweat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f614

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "pensive"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f615

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "confused"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f643

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "upside_down"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f911

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "money_mouth"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f632

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "astonished"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const/16 v5, 0x2639

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "frowning2"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f641

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "slight_frown"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f616

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "confounded"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f61e

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "disappointed"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f61f

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "worried"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f624

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "triumph"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f622

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "cry"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f62d

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sob"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f626

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "frowning"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f627

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "anguished"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f628

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "fearful"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f629

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "weary"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f62c

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "grimacing"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f630

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "cold_sweat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f631

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "scream"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f633

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "flushed"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f635

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "dizzy_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f621

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "rage"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f620

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "angry"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f607

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "innocent"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f920

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "cowboy"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f921

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "clown"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f925

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "lying_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f637

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "mask"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f912

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "thermometer_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f915

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "head_bandage"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f922

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "nauseated_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f927

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "sneezing_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f608

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smiling_imp"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f47f

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "imp"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f479

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "japanese_ogre"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f47a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "japanese_goblin"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f480

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "skull"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const/16 v5, 0x2620

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "skull_crossbones"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f47b

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "ghost"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f47d

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "alien"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f47e

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "space_invader"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f916

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "robot"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f4a9

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "poop"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f63a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smiley_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f638

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smile_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f639

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "joy_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f63b

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "heart_eyes_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f63c

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "smirk_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f63d

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "kissing_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f640

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "scream_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f63f

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "crying_cat_face"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f63e

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "pouting_cat"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f648

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "see_no_evil"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f649

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "hear_no_evil"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f64a

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "speak_no_evil"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f466

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "boy"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boy_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boy_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boy_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boy_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boy_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f467

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "girl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "girl_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "girl_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "girl_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "girl_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "girl_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f468

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f469

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "woman"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "woman_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_10

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "woman_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "woman_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "woman_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "woman_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f474

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_man"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_man_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_man_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_man_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_man_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_man_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f475

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_woman"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_woman_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_woman_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_woman_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_woman_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "older_woman_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f476

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f47c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "angel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "angel_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "angel_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "angel_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "angel_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "angel_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f46e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cop_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cop_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cop_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cop_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cop_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f575

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spy_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spy_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spy_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_30

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spy_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_31

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spy_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f482

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guardsman"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_32

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guardsman_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_33

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guardsman_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_34

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guardsman_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_35

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guardsman_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_36

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guardsman_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f477

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_worker"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_37

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_worker_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_38

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_worker_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_39

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_worker_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_worker_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_worker_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f473

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_turban"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_turban_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_turban_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_turban_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_3f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_turban_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_40

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_turban_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f471

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_blond_hair"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_41

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_blond_hair_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_42

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_blond_hair_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_43

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_blond_hair_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_44

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_blond_hair_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_45

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_blond_hair_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f385

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "santa"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_46

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "santa_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_47

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "santa_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_48

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "santa_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_49

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "santa_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "santa_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f936

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mrs_claus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mrs_claus_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mrs_claus_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mrs_claus_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mrs_claus_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_4f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mrs_claus_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f478

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "princess"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_50

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "princess_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_51

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "princess_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_52

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "princess_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_53

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "princess_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_54

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "princess_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f934

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prince"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_55

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prince_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_56

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prince_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_57

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prince_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_58

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prince_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_59

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prince_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f470

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bride_with_veil"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bride_with_veil_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bride_with_veil_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bride_with_veil_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bride_with_veil_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bride_with_veil_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f935

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_in_tuxedo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_5f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_in_tuxedo_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_60

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_in_tuxedo_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_61

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_in_tuxedo_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_62

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_in_tuxedo_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_63

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_in_tuxedo_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f930

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pregnant_woman"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_64

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pregnant_woman_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_65

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pregnant_woman_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_66

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pregnant_woman_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_67

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pregnant_woman_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_68

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pregnant_woman_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f472

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_gua_pi_mao"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_69

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_gua_pi_mao_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_gua_pi_mao_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_gua_pi_mao_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_gua_pi_mao_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_with_gua_pi_mao_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f64d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_frowning"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_frowning_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_6f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_frowning_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_70

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_frowning_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_71

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_frowning_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_72

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_frowning_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f64e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_pouting_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_73

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_pouting_face_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_74

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_pouting_face_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_75

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_pouting_face_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_76

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_pouting_face_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_77

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "person_with_pouting_face_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f645

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_good"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_78

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_good_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_79

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_good_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_good_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_good_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_good_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f646

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_woman"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_woman_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_woman_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_7f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_woman_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_80

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_woman_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_81

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_woman_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f481

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_desk_person"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_82

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_desk_person_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_83

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_desk_person_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_84

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_desk_person_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_85

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_desk_person_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_86

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_desk_person_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f64b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raising_hand"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_87

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raising_hand_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_88

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raising_hand_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_89

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raising_hand_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raising_hand_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raising_hand_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f647

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_8f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_90

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f926

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "face_palm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_91

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "face_palm_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_92

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "face_palm_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_93

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "face_palm_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_94

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "face_palm_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_95

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "face_palm_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f937

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrug"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_96

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrug_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_97

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrug_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_98

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrug_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_99

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrug_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrug_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f486

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "massage"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "massage_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "massage_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "massage_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "massage_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_9f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "massage_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f487

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "haircut"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "haircut_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "haircut_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "haircut_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "haircut_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "haircut_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "walking"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "walking_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "walking_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "walking_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "walking_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_a9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "walking_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "runner"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_aa

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "runner_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ab

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "runner_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ac

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "runner_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ad

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "runner_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ae

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "runner_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f483

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_af

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancer_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancer_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancer_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancer_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancer_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f57a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_dancing"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_dancing_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_dancing_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_dancing_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_dancing_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "man_dancing_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f46f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dancers"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f574

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "levitate"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "speaking_head"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f464

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bust_in_silhouette"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f465

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "busts_in_silhouette"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f93a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fencer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse_racing"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_b9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse_racing_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ba

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse_racing_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_bb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse_racing_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_bc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse_racing_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_bd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse_racing_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "skier"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "snowboarder"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3cc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "golfer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "surfer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_be

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "surfer_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_bf

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "surfer_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "surfer_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "surfer_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "surfer_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rowboat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rowboat_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rowboat_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rowboat_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rowboat_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rowboat_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ca

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "swimmer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "swimmer_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_c9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "swimmer_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ca

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "swimmer_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_cb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "swimmer_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_cc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "swimmer_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball_player"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_cd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball_player_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ce

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball_player_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_cf

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball_player_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball_player_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball_player_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3cb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lifter"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lifter_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lifter_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lifter_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lifter_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lifter_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bicyclist"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bicyclist_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bicyclist_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_d9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bicyclist_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_da

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bicyclist_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_db

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bicyclist_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_bicyclist"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_dc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_bicyclist_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_dd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_bicyclist_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_de

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_bicyclist_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_df

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_bicyclist_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_bicyclist_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "race_car"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3cd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "motorcycle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f938

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cartwheel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cartwheel_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cartwheel_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cartwheel_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cartwheel_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cartwheel_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f93c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrestlers"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrestlers_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrestlers_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrestlers_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_e9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrestlers_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ea

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrestlers_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f93d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_polo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_eb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_polo_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ec

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_polo_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ed

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_polo_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ee

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_polo_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_ef

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_polo_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f93e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handball_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handball_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handball_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handball_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handball_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f939

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "juggling"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "juggling_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "juggling_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "juggling_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "juggling_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_f9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "juggling_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f46b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "couple"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f46c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "two_men_holding_hands"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f46d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "two_women_holding_hands"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f48f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "couplekiss"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_fa

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "kiss_mm"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v6, v5, [I

    fill-array-data v6, :array_fb

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "kiss_ww"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v6, v2, [I

    const v7, 0x1f491

    aput v7, v6, v4

    invoke-direct {v1, v6, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v6, "couple_with_heart"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    const/4 v6, 0x3

    new-array v7, v6, [I

    fill-array-data v7, :array_fc

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "couple_mm"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_fd

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "couple_ww"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v2, [I

    const v8, 0x1f46a

    aput v8, v7, v4

    invoke-direct {v1, v7, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_fe

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mwg"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_ff

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mwgb"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_100

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mwbb"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_101

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mwgg"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_102

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mmb"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_103

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mmg"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_104

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mmgb"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_105

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mmbb"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_106

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_mmgg"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_107

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "family_wwb"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_108

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v6, "family_wwg"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v6, v5, [I

    fill-array-data v6, :array_109

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "family_wwgb"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v6, v5, [I

    fill-array-data v6, :array_10a

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "family_wwbb"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v6, v5, [I

    fill-array-data v6, :array_10b

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v5, "family_wwgg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "muscle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_10c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "muscle_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_10d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "muscle_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_10e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "muscle_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_10f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "muscle_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_110

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "muscle_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f933

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "selfie"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_111

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "selfie_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_112

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "selfie_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_113

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "selfie_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_114

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "selfie_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_115

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "selfie_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f448

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_left"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_116

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_left_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_117

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_left_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_118

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_left_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_119

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_left_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_left_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f449

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_right"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_right_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_right_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_right_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_right_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_11f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_right_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x261d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_120

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_121

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_122

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_123

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_124

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f446

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_125

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_2_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_126

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_2_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_127

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_2_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_128

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_2_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_129

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_up_2_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f595

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "middle_finger"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "middle_finger_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "middle_finger_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "middle_finger_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "middle_finger_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "middle_finger_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f447

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_down"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_12f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_down_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_130

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_down_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_131

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_down_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_132

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_down_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_133

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "point_down_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x270c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "v"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_134

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "v_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_135

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "v_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_136

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "v_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_137

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "v_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_138

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "v_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f91e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fingers_crossed"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_139

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fingers_crossed_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fingers_crossed_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fingers_crossed_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fingers_crossed_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fingers_crossed_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f596

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vulcan"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vulcan_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_13f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vulcan_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_140

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vulcan_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_141

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vulcan_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_142

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vulcan_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f918

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metal"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_143

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metal_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_144

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metal_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_145

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metal_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_146

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metal_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_147

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metal_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f919

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "call_me"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_148

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "call_me_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_149

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "call_me_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "call_me_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "call_me_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "call_me_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f590

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hand_splayed"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hand_splayed_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hand_splayed_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_14f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hand_splayed_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_150

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hand_splayed_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_151

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hand_splayed_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x270b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hand"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_152

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hand_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_153

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hand_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_154

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hand_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_155

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hand_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_156

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hand_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f44c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_hand"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_157

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_hand_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_158

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_hand_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_159

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_hand_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_hand_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok_hand_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f44d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsup"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsup_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsup_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsup_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_15f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsup_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_160

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsup_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f44e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsdown"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_161

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsdown_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_162

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsdown_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_163

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsdown_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_164

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsdown_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_165

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thumbsdown_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x270a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fist"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_166

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fist_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_167

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fist_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_168

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fist_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_169

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fist_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fist_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f44a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "punch"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "punch_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "punch_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "punch_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "punch_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_16f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "punch_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f91b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_facing_fist"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_170

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_facing_fist_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_171

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_facing_fist_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_172

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_facing_fist_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_173

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_facing_fist_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_174

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_facing_fist_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f91c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "right_facing_fist"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_175

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "right_facing_fist_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_176

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "right_facing_fist_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_177

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "right_facing_fist_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_178

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "right_facing_fist_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_179

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "right_facing_fist_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f91a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_back_of_hand"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_back_of_hand_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_back_of_hand_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_back_of_hand_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_back_of_hand_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_back_of_hand_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f44b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wave"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_17f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wave_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_180

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wave_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_181

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wave_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_182

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wave_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_183

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wave_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f44f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clap"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_184

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clap_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_185

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clap_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_186

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clap_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_187

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clap_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_188

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clap_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x270d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "writing_hand"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_189

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "writing_hand_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "writing_hand_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "writing_hand_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "writing_hand_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "writing_hand_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f450

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_hands"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_hands_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_18f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_hands_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_190

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_hands_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_191

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_hands_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_192

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_hands_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f64c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hands"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_193

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hands_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_194

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hands_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_195

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hands_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_196

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hands_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_197

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "raised_hands_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f64f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pray"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_198

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pray_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_199

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pray_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pray_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pray_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pray_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f91d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handshake"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handshake_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handshake_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_19f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handshake_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handshake_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handshake_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f485

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nail_care"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nail_care_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nail_care_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nail_care_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nail_care_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nail_care_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f442

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1a9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1aa

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ab

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f443

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nose"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ac

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nose_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ad

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nose_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ae

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nose_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1af

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nose_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nose_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f463

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "footprints"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f440

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eyes"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f441

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eye"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eye_in_speech_bubble"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f445

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tongue"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f444

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lips"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f48b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "kiss"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f498

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cupid"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2764

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f493

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heartbeat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f494

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "broken_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f495

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "two_hearts"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f496

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sparkling_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f497

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heartpulse"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f499

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "blue_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f49a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "green_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f49b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "yellow_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f49c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "purple_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f49d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gift_heart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f49e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "revolving_hearts"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f49f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heart_decoration"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2763

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heart_exclamation"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f48c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "love_letter"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "zzz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "anger"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bomb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boom"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sweat_drops"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dash"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dizzy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ac

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "speech_balloon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "speech_left"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "anger_right"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ad

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thought_balloon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f573

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hole"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f453

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eyeglasses"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f576

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dark_sunglasses"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f454

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "necktie"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f455

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shirt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f456

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "jeans"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f457

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dress"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f458

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "kimono"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f459

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bikini"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f45a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "womans_clothes"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f45b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "purse"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f45c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "handbag"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f45d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pouch"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6cd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shopping_bags"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f392

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "school_satchel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f45e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mans_shoe"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f45f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "athletic_shoe"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f460

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "high_heel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f461

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sandal"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f462

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boot"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f451

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crown"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f452

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "womans_hat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tophat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f393

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mortar_board"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "helmet_with_cross"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "prayer_beads"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f484

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lipstick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f48d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ring"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f48e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gem"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f435

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "monkey_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f412

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "monkey"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f98d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gorilla"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f436

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dog"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f415

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dog2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f429

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "poodle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f43a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wolf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f98a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fox"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f431

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f408

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cat2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f981

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lion_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f42f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tiger"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f405

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tiger2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f406

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "leopard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f434

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "horse"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f40e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "racehorse"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f98c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "deer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f984

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "unicorn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f42e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f402

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ox"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f403

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "water_buffalo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f404

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cow2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f437

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pig"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f416

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pig2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f417

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boar"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f43d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pig_nose"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ram"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f411

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sheep"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f410

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "goat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f42a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dromedary_camel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f42b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "camel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f418

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "elephant"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f98f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rhino"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f42d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mouse"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f401

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mouse2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f400

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f439

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hamster"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f430

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rabbit"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f407

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rabbit2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f43f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chipmunk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f987

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f43b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bear"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f428

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "koala"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f43c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "panda_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f43e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "feet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f983

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "turkey"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f414

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chicken"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f413

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rooster"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f423

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hatching_chick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f424

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_chick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f425

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hatched_chick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f426

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bird"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f427

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "penguin"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f54a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dove"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f985

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eagle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f986

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "duck"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f989

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "owl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f438

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "frog"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f40a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crocodile"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f422

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "turtle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f98e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lizard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f40d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "snake"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f432

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dragon_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f409

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dragon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f433

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "whale"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f40b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "whale2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f42c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dolphin"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f41f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fish"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f420

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tropical_fish"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f421

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "blowfish"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f988

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shark"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f419

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "octopus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f41a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shell"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f980

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crab"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f990

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shrimp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f991

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "squid"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f98b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "butterfly"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f40c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "snail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f41b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bug"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f41c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ant"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f41d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bee"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f41e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "beetle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f577

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spider"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f578

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spider_web"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f982

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "scorpion"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f490

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bouquet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f338

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cherry_blossom"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_flower"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rosette"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f339

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rose"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f940

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wilted_rose"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f33a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hibiscus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f33b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sunflower"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f33c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "blossom"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f337

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tulip"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f331

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "seedling"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f332

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "evergreen_tree"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f333

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "deciduous_tree"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f334

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "palm_tree"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f335

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cactus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f33e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ear_of_rice"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f33f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "herb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2618

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shamrock"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f340

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "four_leaf_clover"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f341

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "maple_leaf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f342

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fallen_leaf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f343

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "leaves"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f347

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "grapes"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f348

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "melon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f349

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "watermelon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f34a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tangerine"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f34b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lemon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f34c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "banana"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f34d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pineapple"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f34e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "apple"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f34f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "green_apple"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f350

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pear"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f351

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "peach"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f352

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cherries"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f353

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "strawberry"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f95d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "kiwi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f345

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tomato"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f951

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "avocado"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f346

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eggplant"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f954

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "potato"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f955

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "carrot"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f33d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "corn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f336

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hot_pepper"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f952

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cucumber"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f344

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mushroom"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f95c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "peanuts"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f330

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chestnut"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f35e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bread"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f950

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "croissant"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f956

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "french_bread"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f95e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pancakes"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f9c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cheese"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f356

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "meat_on_bone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f357

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "poultry_leg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f953

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bacon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f354

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hamburger"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f35f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fries"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f355

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pizza"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f32d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hotdog"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f32e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "taco"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f32f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "burrito"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f959

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "stuffed_flatbread"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f95a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "egg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f373

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cooking"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f958

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shallow_pan_of_food"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f372

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "stew"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f957

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "salad"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f37f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "popcorn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f371

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bento"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f358

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rice_cracker"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f359

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rice_ball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f35a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rice"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f35b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "curry"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f35c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ramen"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f35d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spaghetti"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f360

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sweet_potato"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f362

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "oden"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f363

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sushi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f364

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fried_shrimp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f365

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fish_cake"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f361

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dango"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f366

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "icecream"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f367

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shaved_ice"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f368

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ice_cream"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f369

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "doughnut"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f36a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cookie"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f382

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "birthday"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f370

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cake"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f36b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chocolate_bar"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f36c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "candy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f36d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lollipop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f36e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "custard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f36f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "honey_pot"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f37c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_bottle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f95b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "milk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2615

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "coffee"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f375

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tea"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f376

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sake"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f37e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "champagne"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f377

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wine_glass"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f378

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cocktail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f379

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tropical_drink"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f37a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "beer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f37b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "beers"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f942

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "champagne_glass"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f943

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tumbler_glass"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f37d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fork_knife_plate"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f374

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fork_and_knife"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f944

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spoon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f52a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "knife"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "amphora"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f30d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "earth_africa"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f30e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "earth_americas"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f30f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "earth_asia"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f310

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "globe_with_meridians"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "map"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "japan"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_snow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f30b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "volcano"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mount_fuji"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "camping"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "beach"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3dc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "desert"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3dd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "island"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3de

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "park"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3df

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "stadium"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3db

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "classical_building"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction_site"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "homes"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cityscape"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3da

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "house_abandoned"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "house"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "house_with_garden"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "office"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "post_office"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "european_post_office"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hospital"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bank"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hotel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "love_hotel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "convenience_store"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "school"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "department_store"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "factory"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "japanese_castle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "european_castle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f492

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wedding"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tokyo_tower"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "statue_of_liberty"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "church"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f54c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mosque"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f54d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "synagogue"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shinto_shrine"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f54b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "kaaba"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fountain"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tent"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f301

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "foggy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f303

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "night_with_stars"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f304

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sunrise_over_mountains"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f305

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sunrise"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f306

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "city_dusk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f307

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "city_sunset"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f309

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bridge_at_night"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2668

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hotsprings"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f30c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "milky_way"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "carousel_horse"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ferris_wheel"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "roller_coaster"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f488

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "barber"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "circus_tent"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ad

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "performing_arts"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "frame_photo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "art"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "slot_machine"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f682

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "steam_locomotive"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f683

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "railway_car"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f684

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bullettrain_side"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f685

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bullettrain_front"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f686

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "train2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f687

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "metro"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f688

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "light_rail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f689

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "station"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f68a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tram"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f69d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "monorail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f69e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_railway"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f68b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "train"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f68c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f68d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "oncoming_bus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f68e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "trolleybus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f690

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "minibus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f691

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ambulance"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f692

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fire_engine"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f693

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "police_car"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f694

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "oncoming_police_car"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f695

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "taxi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f696

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "oncoming_taxi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f697

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "red_car"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f698

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "oncoming_automobile"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f699

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "blue_car"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f69a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "truck"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f69b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "articulated_lorry"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f69c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tractor"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bike"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "scooter"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "motor_scooter"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f68f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "busstop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "motorway"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "railway_track"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fuelpump"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rotating_light"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "traffic_light"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vertical_traffic_light"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "construction"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "octagonal_sign"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2693

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "anchor"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sailboat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6f6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "canoe"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "speedboat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cruise_ship"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ferry"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "motorboat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ship"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2708

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "airplane"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "airplane_small"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "airplane_departure"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "airplane_arriving"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ba

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "seat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f681

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "helicopter"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f69f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "suspension_railway"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mountain_cableway"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "aerial_tramway"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f680

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rocket"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "satellite_orbital"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bellhop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "door"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6cc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sleeping_accommodation"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bed"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6cb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "couch"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "toilet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shower"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bath"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bath_tone1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bath_tone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bath_tone3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bath_tone4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bath_tone5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6c1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bathtub"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x231b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hourglass"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hourglass_flowing_sand"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x231a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "watch"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "alarm_clock"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "stopwatch"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "timer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f570

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f55b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock12"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f567

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock1230"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f550

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock1"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f55c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock130"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f551

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f55d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock230"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f552

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock3"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f55e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock330"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f553

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock4"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f55f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock430"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f554

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock5"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f560

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock530"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f555

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock6"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f561

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock630"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f556

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock7"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f562

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock730"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f557

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock8"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f563

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock830"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f558

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock9"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f564

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock930"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f559

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock10"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f565

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock1030"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f55a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock11"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f566

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clock1130"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f311

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "new_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f312

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "waxing_crescent_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f313

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "first_quarter_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f314

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "waxing_gibbous_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f315

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "full_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f316

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "waning_gibbous_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f317

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "last_quarter_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f318

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "waning_crescent_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f319

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crescent_moon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f31a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "new_moon_with_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f31b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "first_quarter_moon_with_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f31c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "last_quarter_moon_with_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f321

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thermometer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2600

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sunny"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f31d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "full_moon_with_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f31e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sun_with_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b50

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "star"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f31f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "star2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f320

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "stars"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2601

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cloud"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "partly_sunny"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26c8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "thunder_cloud_rain"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f324

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_sun_small_cloud"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f325

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_sun_cloud"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f326

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_sun_rain_cloud"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f327

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cloud_rain"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f328

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cloud_snow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f329

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cloud_lightning"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f32a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cloud_tornado"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f32b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fog"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f32c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wind_blowing_face"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f300

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cyclone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f308

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rainbow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f302

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "closed_umbrella"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2602

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "umbrella2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2614

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "umbrella"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "beach_umbrella"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "zap"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2744

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "snowflake"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2603

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "snowman2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "snowman"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2604

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "comet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f525

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fire"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "droplet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f30a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ocean"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f383

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "jack_o_lantern"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f384

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "christmas_tree"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f386

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fireworks"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f387

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sparkler"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2728

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sparkles"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f388

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "balloon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f389

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tada"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f38a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "confetti_ball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f38b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tanabata_tree"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f38d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bamboo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f38e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dolls"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f38f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flags"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f390

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wind_chime"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f391

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rice_scene"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f380

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ribbon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f381

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gift"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f397

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "reminder_ribbon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f39f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tickets"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ticket"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f396

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "military_medal"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "trophy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "medal"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f947

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "first_place"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f948

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "second_place"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f949

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "third_place"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "soccer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baseball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "basketball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "volleyball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "football"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rugby_football"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tennis"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "8ball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bowling"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cricket"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "field_hockey"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hockey"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ping_pong"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "badminton"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f94a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "boxing_glove"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f94b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "martial_arts_uniform"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f945

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "goal"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3af

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "golf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ice_skate"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fishing_pole_and_fish"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "running_shirt_with_sash"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ski"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "video_game"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f579

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "joystick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "game_die"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2660

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "spades"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2665

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hearts"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2666

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "diamonds"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2663

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clubs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f0cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_joker"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f004

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mahjong"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flower_playing_cards"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f507

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mute"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f508

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "speaker"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f509

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sound"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f50a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "loud_sound"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "loudspeaker"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mega"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "postal_horn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f514

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bell"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f515

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_bell"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "musical_score"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "musical_note"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "notes"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f399

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "microphone2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f39a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "level_slider"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f39b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "control_knobs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "microphone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "headphones"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "radio"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "saxophone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "guitar"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3b9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "musical_keyboard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ba

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "trumpet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3bb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "violin"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f941

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "drum"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "iphone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "calling"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x260e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "telephone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4de

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "telephone_receiver"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4df

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pager"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fax"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f50b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "battery"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f50c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "electric_plug"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4bb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "computer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "desktop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "printer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2328

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "keyboard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mouse_three_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "trackball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "minidisc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "floppy_disk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dvd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "movie_camera"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f39e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "film_frames"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "projector"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ac

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clapper"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "camera"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "camera_with_flash"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "video_camera"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vhs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f50d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mag"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f50e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mag_right"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f52c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "microscope"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f52d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "telescope"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "satellite"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f56f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "candle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bulb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f526

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flashlight"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "izakaya_lantern"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "notebook_with_decorative_cover"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "closed_book"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "book"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "green_book"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "blue_book"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "orange_book"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4da

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "books"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "notebook"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ledger"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "page_with_curl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4dc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "scroll"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "page_facing_up"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "newspaper"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5de

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "newspaper2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bookmark_tabs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f516

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bookmark"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "label"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "moneybag"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "yen"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dollar"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "euro"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pound"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "money_with_wings"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "credit_card"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "currency_exchange"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heavy_dollar_sign"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2709

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "envelope"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "e-mail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "incoming_envelope"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "envelope_with_arrow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "outbox_tray"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "inbox_tray"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4e6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "package"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mailbox"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mailbox_closed"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mailbox_with_mail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mailbox_with_no_mail"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "postbox"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ballot_box"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x270f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pencil2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2712

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_nib"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f58b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pen_fountain"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f58a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pen_ballpoint"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f58c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "paintbrush"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f58d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crayon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4dd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pencil"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "briefcase"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "file_folder"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "open_file_folder"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5c2    # 1.79997E-40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dividers"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "date"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "calendar"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "notepad_spiral"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "calendar_spiral"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "card_index"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chart_with_upwards_trend"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4c9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chart_with_downwards_trend"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ca

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bar_chart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4cb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "clipboard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4cc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pushpin"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4cd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "round_pushpin"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "paperclip"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f587

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "paperclips"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "straight_ruler"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4d0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "triangular_ruler"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2702

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "scissors"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5c3    # 1.79998E-40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "card_box"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5c4    # 1.8E-40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "file_cabinet"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wastebasket"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f512

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lock"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f513

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "unlock"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f50f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "lock_with_ink_pen"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f510

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "closed_lock_with_key"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f511

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "key"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5dd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "key2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f528

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hammer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2692

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hammer_pick"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tools"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "dagger"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2694

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crossed_swords"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f52b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gun"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bow_and_arrow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shield"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f527

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wrench"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f529

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nut_and_bolt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2699

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gear"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5dc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "compression"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2697

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "alembic"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2696

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "scales"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f517

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "link"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "chains"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f489

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "syringe"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f48a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pill"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ac

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "smoking"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "coffin"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "urn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f5ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "moyai"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6e2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "oil"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f52e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crystal_ball"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "shopping_cart"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3e7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "atm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "put_litter_in_its_place"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "potable_water"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x267f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wheelchair"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mens"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ba

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "womens"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6bb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "restroom"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baby_symbol"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "passport_control"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6c3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "customs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "baggage_claim"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_luggage"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "warning"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "children_crossing"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26d4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_entry"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_entry_sign"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_bicycles"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6ad

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_smoking"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6af

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "do_not_litter"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "non-potable_water"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6b7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_pedestrians"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "no_mobile_phones"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f51e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "underage"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2622

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "radioactive"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2623

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "biohazard"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b06

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_up"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2197

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_upper_right"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x27a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_right"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2198

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_lower_right"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b07

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_down"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2199

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_lower_left"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b05

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_left"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2196

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_upper_left"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2195

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_up_down"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2194

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "left_right_arrow"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x21a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "leftwards_arrow_with_hook"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x21aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_right_hook"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2934

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_heading_up"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2935

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_heading_down"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f503

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrows_clockwise"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f504

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrows_counterclockwise"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f519

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "back"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f51a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "end"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f51b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "on"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f51c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "soon"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f51d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "top"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6d0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "place_of_worship"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x269b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "atom"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f549

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "om_symbol"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2721

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "star_of_david"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2638

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wheel_of_dharma"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x262f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "yin_yang"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x271d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cross"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2626

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "orthodox_cross"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x262a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "star_and_crescent"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x262e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "peace"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f54e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "menorah"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f52f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "six_pointed_star"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2648

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "aries"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2649

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "taurus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x264a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "gemini"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x264b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cancer"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x264c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "leo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x264d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "virgo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x264e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "libra"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x264f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "scorpius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2650

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sagittarius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2651

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "capricorn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2652

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "aquarius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2653

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pisces"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ophiuchus"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f500

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "twisted_rightwards_arrows"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f501

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "repeat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f502

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "repeat_one"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_forward"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fast_forward"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "track_next"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "play_pause"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_backward"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rewind"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "track_previous"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f53c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_up_small"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_double_up"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f53d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_down_small"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "arrow_double_down"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "pause_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "stop_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "record_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x23cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eject"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3a6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cinema"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f505

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "low_brightness"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f506

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "high_brightness"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "signal_strength"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vibration_mode"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "mobile_phone_off"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x267b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "recycle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4db

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "name_badge"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x269c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "fleur-de-lis"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f530

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "beginner"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f531

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "trident"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b55

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "o"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2705

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_check_mark"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2611

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ballot_box_with_check"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2714

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heavy_check_mark"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2716

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heavy_multiplication_x"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x274c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "x"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x274e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "negative_squared_cross_mark"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2795

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heavy_plus_sign"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2796

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heavy_minus_sign"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2797

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "heavy_division_sign"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x27b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "curly_loop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x27bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "loop"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x303d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "part_alternation_mark"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2733

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eight_spoked_asterisk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2734

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eight_pointed_black_star"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2747

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sparkle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x203c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "bangbang"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2049

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "interrobang"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2753

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "question"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2754

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "grey_question"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2755

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "grey_exclamation"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2757

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "exclamation"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x3030

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "wavy_dash"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0xa9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "copyright"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0xae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "registered"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2122

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "tm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "hash"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "asterisk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1b9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "zero"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ba

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "one"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1bb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "two"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1bc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "three"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1bd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "four"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1be

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "five"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1bf

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "six"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "seven"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "eight"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "nine"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f51f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "keycap_ten"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f520

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "capital_abcd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f521

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "abcd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f523

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "symbols"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f524

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "abc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f170

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "a"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f18e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ab"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f171

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "b"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f191

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f192

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "cool"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f193

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "free"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2139

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "information_source"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f194

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x24c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "m"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f195

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "new"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f196

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ng"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f17e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "o2"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f197

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ok"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f17f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "parking"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f198

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sos"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f199

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "up"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f19a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "vs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f201

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "koko"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f202

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "sa"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f237

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u6708"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f236

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u6709"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f22f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u6307"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f250

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "ideograph_advantage"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f239

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u5272"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f21a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u7121"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f232

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u7981"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f251

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "accept"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f238

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u7533"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f234

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u5408"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f233

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u7a7a"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x3297

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "congratulations"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x3299

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "secret"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f23a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u55b6"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f235

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "u6e80"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_small_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_small_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_medium_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_medium_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_medium_small_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x25fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_medium_small_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b1b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_large_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x2b1c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_large_square"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f536

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "large_orange_diamond"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f537

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "large_blue_diamond"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f538

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "small_orange_diamond"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f539

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "small_blue_diamond"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f53a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "small_red_triangle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f53b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "small_red_triangle_down"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f4a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "diamond_shape_with_a_dot_inside"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f518

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "radio_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f532

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_square_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f533

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_square_button"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "white_circle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const/16 v6, 0x26ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "black_circle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f534

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "red_circle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f535

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "blue_circle"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3c1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "checkered_flag"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f6a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "triangular_flag_on_post"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f38c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "crossed_flags"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_black"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    const v6, 0x1f3f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_white"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "rainbow_flag"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ac"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ad"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ae"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_af"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ag"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1c9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ai"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ca

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_al"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1cb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_am"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1cc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ao"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1cd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_aq"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ce

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ar"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1cf

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_as"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_at"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_au"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_aw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ax"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_az"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ba"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_be"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1d9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1da

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1db

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bh"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1dc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1dd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bj"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1de

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1df

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bq"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_br"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_by"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1e9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_bz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ea

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ca"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1eb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ec

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ed

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ee

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ef

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ch"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ci"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ck"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_co"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1f9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1fa

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1fb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cx"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1fc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1fd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_cz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1fe

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_de"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_1ff

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_dg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_200

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_dj"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_201

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_dk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_202

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_dm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_203

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_do"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_204

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_dz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_205

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ea"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_206

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ec"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_207

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ee"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_208

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_eg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_209

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_eh"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_er"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_es"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_et"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_eu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_fi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_20f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_fj"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_210

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_fk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_211

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_fm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_212

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_fo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_213

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_fr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_214

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ga"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_215

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_216

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_217

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ge"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_218

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_219

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gh"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_21f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_220

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gq"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_221

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_222

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_223

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_224

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_225

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_226

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_gy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_227

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_hk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_228

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_hm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_229

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_hn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_hr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ht"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_hu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ic"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_22f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ie"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_230

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_il"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_231

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_im"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_232

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_in"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_233

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_io"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_234

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_iq"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_235

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ir"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_236

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_is"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_237

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_it"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_238

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_je"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_239

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_jm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_jo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_jp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ke"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kh"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_23f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ki"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_240

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_km"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_241

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_242

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_243

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_244

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_245

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ky"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_246

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_kz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_247

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_la"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_248

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_249

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_li"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ls"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_24f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_250

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_lv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_251

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ly"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_252

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ma"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_253

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_254

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_md"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_255

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_me"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_256

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_257

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_258

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mh"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_259

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ml"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mo"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mp"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_25f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mq"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_260

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_261

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ms"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_262

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_263

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_264

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_265

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_266

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mx"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_267

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_my"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_268

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_mz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_269

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_na"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_nc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ne"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_nf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ng"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ni"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_26f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_nl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_270

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_no"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_271

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_np"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_272

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_nr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_273

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_nu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_274

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_nz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_275

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_om"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_276

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pa"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_277

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pe"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_278

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_279

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ph"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_27f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_280

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ps"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_281

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_282

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_pw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_283

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_py"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_284

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_qa"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_285

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_re"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_286

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ro"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_287

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_rs"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_288

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ru"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_289

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_rw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sa"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sb"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_se"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_28f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_290

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sh"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_291

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_si"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_292

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sj"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_293

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_294

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_295

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_296

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_297

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_so"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_298

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_299

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ss"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29a

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_st"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29b

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29c

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sx"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29d

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29e

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_sz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_29f

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ta"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_td"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_th"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tj"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tl"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2a9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2aa

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_to"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2ab

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tr"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2ac

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2ad

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tv"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2ae

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tw"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2af

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_tz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ua"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ug"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_um"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_us"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_uy"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b5

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_uz"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b6

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_va"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b7

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_vc"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b8

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ve"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2b9

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_vg"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2ba

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_vi"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2bb

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_vn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2bc

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_vu"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2bd

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_wf"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2be

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ws"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2bf

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_xk"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2c0

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_ye"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2c1

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_yt"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2c2

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_za"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2c3

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "flag_zm"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    fill-array-data v5, :array_2c4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v3, "flag_zw"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1ff

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_z"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1fe

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_y"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1fd

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_x"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1fc

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_w"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1fb

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_v"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1fa

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_u"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f9

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_t"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f8

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_s"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f7

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_r"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f6

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_q"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f5

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_p"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f4

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_o"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f3

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_n"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f2

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_m"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f1

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_l"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1f0

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_k"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1ef

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_j"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1ee

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_i"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1ed

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_h"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1ec

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_g"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1eb

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_f"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1ea

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_e"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1e9

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_d"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1e8

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1e7

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "regional_indicator_b"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    sget-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/String;

    new-array v3, v2, [I

    const v5, 0x1f1e6

    aput v5, v3, v4

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v2, "regional_indicator_a"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x1f466
        0x1f3fb
    .end array-data

    :array_1
    .array-data 4
        0x1f466
        0x1f3fc
    .end array-data

    :array_2
    .array-data 4
        0x1f466
        0x1f3fd
    .end array-data

    :array_3
    .array-data 4
        0x1f466
        0x1f3fe
    .end array-data

    :array_4
    .array-data 4
        0x1f466
        0x1f3ff
    .end array-data

    :array_5
    .array-data 4
        0x1f467
        0x1f3fb
    .end array-data

    :array_6
    .array-data 4
        0x1f467
        0x1f3fc
    .end array-data

    :array_7
    .array-data 4
        0x1f467
        0x1f3fd
    .end array-data

    :array_8
    .array-data 4
        0x1f467
        0x1f3fe
    .end array-data

    :array_9
    .array-data 4
        0x1f467
        0x1f3ff
    .end array-data

    :array_a
    .array-data 4
        0x1f468
        0x1f3fb
    .end array-data

    :array_b
    .array-data 4
        0x1f468
        0x1f3fc
    .end array-data

    :array_c
    .array-data 4
        0x1f468
        0x1f3fd
    .end array-data

    :array_d
    .array-data 4
        0x1f468
        0x1f3fe
    .end array-data

    :array_e
    .array-data 4
        0x1f468
        0x1f3ff
    .end array-data

    :array_f
    .array-data 4
        0x1f469
        0x1f3fb
    .end array-data

    :array_10
    .array-data 4
        0x1f469
        0x1f3fc
    .end array-data

    :array_11
    .array-data 4
        0x1f469
        0x1f3fd
    .end array-data

    :array_12
    .array-data 4
        0x1f469
        0x1f3fe
    .end array-data

    :array_13
    .array-data 4
        0x1f469
        0x1f3ff
    .end array-data

    :array_14
    .array-data 4
        0x1f474
        0x1f3fb
    .end array-data

    :array_15
    .array-data 4
        0x1f474
        0x1f3fc
    .end array-data

    :array_16
    .array-data 4
        0x1f474
        0x1f3fd
    .end array-data

    :array_17
    .array-data 4
        0x1f474
        0x1f3fe
    .end array-data

    :array_18
    .array-data 4
        0x1f474
        0x1f3ff
    .end array-data

    :array_19
    .array-data 4
        0x1f475
        0x1f3fb
    .end array-data

    :array_1a
    .array-data 4
        0x1f475
        0x1f3fc
    .end array-data

    :array_1b
    .array-data 4
        0x1f475
        0x1f3fd
    .end array-data

    :array_1c
    .array-data 4
        0x1f475
        0x1f3fe
    .end array-data

    :array_1d
    .array-data 4
        0x1f475
        0x1f3ff
    .end array-data

    :array_1e
    .array-data 4
        0x1f476
        0x1f3fb
    .end array-data

    :array_1f
    .array-data 4
        0x1f476
        0x1f3fc
    .end array-data

    :array_20
    .array-data 4
        0x1f476
        0x1f3fd
    .end array-data

    :array_21
    .array-data 4
        0x1f476
        0x1f3fe
    .end array-data

    :array_22
    .array-data 4
        0x1f476
        0x1f3ff
    .end array-data

    :array_23
    .array-data 4
        0x1f47c
        0x1f3fb
    .end array-data

    :array_24
    .array-data 4
        0x1f47c
        0x1f3fc
    .end array-data

    :array_25
    .array-data 4
        0x1f47c
        0x1f3fd
    .end array-data

    :array_26
    .array-data 4
        0x1f47c
        0x1f3fe
    .end array-data

    :array_27
    .array-data 4
        0x1f47c
        0x1f3ff
    .end array-data

    :array_28
    .array-data 4
        0x1f46e
        0x1f3fb
    .end array-data

    :array_29
    .array-data 4
        0x1f46e
        0x1f3fc
    .end array-data

    :array_2a
    .array-data 4
        0x1f46e
        0x1f3fd
    .end array-data

    :array_2b
    .array-data 4
        0x1f46e
        0x1f3fe
    .end array-data

    :array_2c
    .array-data 4
        0x1f46e
        0x1f3ff
    .end array-data

    :array_2d
    .array-data 4
        0x1f575
        0x1f3fb
    .end array-data

    :array_2e
    .array-data 4
        0x1f575
        0x1f3fc
    .end array-data

    :array_2f
    .array-data 4
        0x1f575
        0x1f3fd
    .end array-data

    :array_30
    .array-data 4
        0x1f575
        0x1f3fe
    .end array-data

    :array_31
    .array-data 4
        0x1f575
        0x1f3ff
    .end array-data

    :array_32
    .array-data 4
        0x1f482
        0x1f3fb
    .end array-data

    :array_33
    .array-data 4
        0x1f482
        0x1f3fc
    .end array-data

    :array_34
    .array-data 4
        0x1f482
        0x1f3fd
    .end array-data

    :array_35
    .array-data 4
        0x1f482
        0x1f3fe
    .end array-data

    :array_36
    .array-data 4
        0x1f482
        0x1f3ff
    .end array-data

    :array_37
    .array-data 4
        0x1f477
        0x1f3fb
    .end array-data

    :array_38
    .array-data 4
        0x1f477
        0x1f3fc
    .end array-data

    :array_39
    .array-data 4
        0x1f477
        0x1f3fd
    .end array-data

    :array_3a
    .array-data 4
        0x1f477
        0x1f3fe
    .end array-data

    :array_3b
    .array-data 4
        0x1f477
        0x1f3ff
    .end array-data

    :array_3c
    .array-data 4
        0x1f473
        0x1f3fb
    .end array-data

    :array_3d
    .array-data 4
        0x1f473
        0x1f3fc
    .end array-data

    :array_3e
    .array-data 4
        0x1f473
        0x1f3fd
    .end array-data

    :array_3f
    .array-data 4
        0x1f473
        0x1f3fe
    .end array-data

    :array_40
    .array-data 4
        0x1f473
        0x1f3ff
    .end array-data

    :array_41
    .array-data 4
        0x1f471
        0x1f3fb
    .end array-data

    :array_42
    .array-data 4
        0x1f471
        0x1f3fc
    .end array-data

    :array_43
    .array-data 4
        0x1f471
        0x1f3fd
    .end array-data

    :array_44
    .array-data 4
        0x1f471
        0x1f3fe
    .end array-data

    :array_45
    .array-data 4
        0x1f471
        0x1f3ff
    .end array-data

    :array_46
    .array-data 4
        0x1f385
        0x1f3fb
    .end array-data

    :array_47
    .array-data 4
        0x1f385
        0x1f3fc
    .end array-data

    :array_48
    .array-data 4
        0x1f385
        0x1f3fd
    .end array-data

    :array_49
    .array-data 4
        0x1f385
        0x1f3fe
    .end array-data

    :array_4a
    .array-data 4
        0x1f385
        0x1f3ff
    .end array-data

    :array_4b
    .array-data 4
        0x1f936
        0x1f3fb
    .end array-data

    :array_4c
    .array-data 4
        0x1f936
        0x1f3fc
    .end array-data

    :array_4d
    .array-data 4
        0x1f936
        0x1f3fd
    .end array-data

    :array_4e
    .array-data 4
        0x1f936
        0x1f3fe
    .end array-data

    :array_4f
    .array-data 4
        0x1f936
        0x1f3ff
    .end array-data

    :array_50
    .array-data 4
        0x1f478
        0x1f3fb
    .end array-data

    :array_51
    .array-data 4
        0x1f478
        0x1f3fc
    .end array-data

    :array_52
    .array-data 4
        0x1f478
        0x1f3fd
    .end array-data

    :array_53
    .array-data 4
        0x1f478
        0x1f3fe
    .end array-data

    :array_54
    .array-data 4
        0x1f478
        0x1f3ff
    .end array-data

    :array_55
    .array-data 4
        0x1f934
        0x1f3fb
    .end array-data

    :array_56
    .array-data 4
        0x1f934
        0x1f3fc
    .end array-data

    :array_57
    .array-data 4
        0x1f934
        0x1f3fd
    .end array-data

    :array_58
    .array-data 4
        0x1f934
        0x1f3fe
    .end array-data

    :array_59
    .array-data 4
        0x1f934
        0x1f3ff
    .end array-data

    :array_5a
    .array-data 4
        0x1f470
        0x1f3fb
    .end array-data

    :array_5b
    .array-data 4
        0x1f470
        0x1f3fc
    .end array-data

    :array_5c
    .array-data 4
        0x1f470
        0x1f3fd
    .end array-data

    :array_5d
    .array-data 4
        0x1f470
        0x1f3fe
    .end array-data

    :array_5e
    .array-data 4
        0x1f470
        0x1f3ff
    .end array-data

    :array_5f
    .array-data 4
        0x1f935
        0x1f3fb
    .end array-data

    :array_60
    .array-data 4
        0x1f935
        0x1f3fc
    .end array-data

    :array_61
    .array-data 4
        0x1f935
        0x1f3fd
    .end array-data

    :array_62
    .array-data 4
        0x1f935
        0x1f3fe
    .end array-data

    :array_63
    .array-data 4
        0x1f935
        0x1f3ff
    .end array-data

    :array_64
    .array-data 4
        0x1f930
        0x1f3fb
    .end array-data

    :array_65
    .array-data 4
        0x1f930
        0x1f3fc
    .end array-data

    :array_66
    .array-data 4
        0x1f930
        0x1f3fd
    .end array-data

    :array_67
    .array-data 4
        0x1f930
        0x1f3fe
    .end array-data

    :array_68
    .array-data 4
        0x1f930
        0x1f3ff
    .end array-data

    :array_69
    .array-data 4
        0x1f472
        0x1f3fb
    .end array-data

    :array_6a
    .array-data 4
        0x1f472
        0x1f3fc
    .end array-data

    :array_6b
    .array-data 4
        0x1f472
        0x1f3fd
    .end array-data

    :array_6c
    .array-data 4
        0x1f472
        0x1f3fe
    .end array-data

    :array_6d
    .array-data 4
        0x1f472
        0x1f3ff
    .end array-data

    :array_6e
    .array-data 4
        0x1f64d
        0x1f3fb
    .end array-data

    :array_6f
    .array-data 4
        0x1f64d
        0x1f3fc
    .end array-data

    :array_70
    .array-data 4
        0x1f64d
        0x1f3fd
    .end array-data

    :array_71
    .array-data 4
        0x1f64d
        0x1f3fe
    .end array-data

    :array_72
    .array-data 4
        0x1f64d
        0x1f3ff
    .end array-data

    :array_73
    .array-data 4
        0x1f64e
        0x1f3fb
    .end array-data

    :array_74
    .array-data 4
        0x1f64e
        0x1f3fc
    .end array-data

    :array_75
    .array-data 4
        0x1f64e
        0x1f3fd
    .end array-data

    :array_76
    .array-data 4
        0x1f64e
        0x1f3fe
    .end array-data

    :array_77
    .array-data 4
        0x1f64e
        0x1f3ff
    .end array-data

    :array_78
    .array-data 4
        0x1f645
        0x1f3fb
    .end array-data

    :array_79
    .array-data 4
        0x1f645
        0x1f3fc
    .end array-data

    :array_7a
    .array-data 4
        0x1f645
        0x1f3fd
    .end array-data

    :array_7b
    .array-data 4
        0x1f645
        0x1f3fe
    .end array-data

    :array_7c
    .array-data 4
        0x1f645
        0x1f3ff
    .end array-data

    :array_7d
    .array-data 4
        0x1f646
        0x1f3fb
    .end array-data

    :array_7e
    .array-data 4
        0x1f646
        0x1f3fc
    .end array-data

    :array_7f
    .array-data 4
        0x1f646
        0x1f3fd
    .end array-data

    :array_80
    .array-data 4
        0x1f646
        0x1f3fe
    .end array-data

    :array_81
    .array-data 4
        0x1f646
        0x1f3ff
    .end array-data

    :array_82
    .array-data 4
        0x1f481
        0x1f3fb
    .end array-data

    :array_83
    .array-data 4
        0x1f481
        0x1f3fc
    .end array-data

    :array_84
    .array-data 4
        0x1f481
        0x1f3fd
    .end array-data

    :array_85
    .array-data 4
        0x1f481
        0x1f3fe
    .end array-data

    :array_86
    .array-data 4
        0x1f481
        0x1f3ff
    .end array-data

    :array_87
    .array-data 4
        0x1f64b
        0x1f3fb
    .end array-data

    :array_88
    .array-data 4
        0x1f64b
        0x1f3fc
    .end array-data

    :array_89
    .array-data 4
        0x1f64b
        0x1f3fd
    .end array-data

    :array_8a
    .array-data 4
        0x1f64b
        0x1f3fe
    .end array-data

    :array_8b
    .array-data 4
        0x1f64b
        0x1f3ff
    .end array-data

    :array_8c
    .array-data 4
        0x1f647
        0x1f3fb
    .end array-data

    :array_8d
    .array-data 4
        0x1f647
        0x1f3fc
    .end array-data

    :array_8e
    .array-data 4
        0x1f647
        0x1f3fd
    .end array-data

    :array_8f
    .array-data 4
        0x1f647
        0x1f3fe
    .end array-data

    :array_90
    .array-data 4
        0x1f647
        0x1f3ff
    .end array-data

    :array_91
    .array-data 4
        0x1f926
        0x1f3fb
    .end array-data

    :array_92
    .array-data 4
        0x1f926
        0x1f3fc
    .end array-data

    :array_93
    .array-data 4
        0x1f926
        0x1f3fd
    .end array-data

    :array_94
    .array-data 4
        0x1f926
        0x1f3fe
    .end array-data

    :array_95
    .array-data 4
        0x1f926
        0x1f3ff
    .end array-data

    :array_96
    .array-data 4
        0x1f937
        0x1f3fb
    .end array-data

    :array_97
    .array-data 4
        0x1f937
        0x1f3fc
    .end array-data

    :array_98
    .array-data 4
        0x1f937
        0x1f3fd
    .end array-data

    :array_99
    .array-data 4
        0x1f937
        0x1f3fe
    .end array-data

    :array_9a
    .array-data 4
        0x1f937
        0x1f3ff
    .end array-data

    :array_9b
    .array-data 4
        0x1f486
        0x1f3fb
    .end array-data

    :array_9c
    .array-data 4
        0x1f486
        0x1f3fc
    .end array-data

    :array_9d
    .array-data 4
        0x1f486
        0x1f3fd
    .end array-data

    :array_9e
    .array-data 4
        0x1f486
        0x1f3fe
    .end array-data

    :array_9f
    .array-data 4
        0x1f486
        0x1f3ff
    .end array-data

    :array_a0
    .array-data 4
        0x1f487
        0x1f3fb
    .end array-data

    :array_a1
    .array-data 4
        0x1f487
        0x1f3fc
    .end array-data

    :array_a2
    .array-data 4
        0x1f487
        0x1f3fd
    .end array-data

    :array_a3
    .array-data 4
        0x1f487
        0x1f3fe
    .end array-data

    :array_a4
    .array-data 4
        0x1f487
        0x1f3ff
    .end array-data

    :array_a5
    .array-data 4
        0x1f6b6
        0x1f3fb
    .end array-data

    :array_a6
    .array-data 4
        0x1f6b6
        0x1f3fc
    .end array-data

    :array_a7
    .array-data 4
        0x1f6b6
        0x1f3fd
    .end array-data

    :array_a8
    .array-data 4
        0x1f6b6
        0x1f3fe
    .end array-data

    :array_a9
    .array-data 4
        0x1f6b6
        0x1f3ff
    .end array-data

    :array_aa
    .array-data 4
        0x1f3c3
        0x1f3fb
    .end array-data

    :array_ab
    .array-data 4
        0x1f3c3
        0x1f3fc
    .end array-data

    :array_ac
    .array-data 4
        0x1f3c3
        0x1f3fd
    .end array-data

    :array_ad
    .array-data 4
        0x1f3c3
        0x1f3fe
    .end array-data

    :array_ae
    .array-data 4
        0x1f3c3
        0x1f3ff
    .end array-data

    :array_af
    .array-data 4
        0x1f483
        0x1f3fb
    .end array-data

    :array_b0
    .array-data 4
        0x1f483
        0x1f3fc
    .end array-data

    :array_b1
    .array-data 4
        0x1f483
        0x1f3fd
    .end array-data

    :array_b2
    .array-data 4
        0x1f483
        0x1f3fe
    .end array-data

    :array_b3
    .array-data 4
        0x1f483
        0x1f3ff
    .end array-data

    :array_b4
    .array-data 4
        0x1f57a
        0x1f3fb
    .end array-data

    :array_b5
    .array-data 4
        0x1f57a
        0x1f3fc
    .end array-data

    :array_b6
    .array-data 4
        0x1f57a
        0x1f3fd
    .end array-data

    :array_b7
    .array-data 4
        0x1f57a
        0x1f3fe
    .end array-data

    :array_b8
    .array-data 4
        0x1f57a
        0x1f3ff
    .end array-data

    :array_b9
    .array-data 4
        0x1f3c7
        0x1f3fb
    .end array-data

    :array_ba
    .array-data 4
        0x1f3c7
        0x1f3fc
    .end array-data

    :array_bb
    .array-data 4
        0x1f3c7
        0x1f3fd
    .end array-data

    :array_bc
    .array-data 4
        0x1f3c7
        0x1f3fe
    .end array-data

    :array_bd
    .array-data 4
        0x1f3c7
        0x1f3ff
    .end array-data

    :array_be
    .array-data 4
        0x1f3c4
        0x1f3fb
    .end array-data

    :array_bf
    .array-data 4
        0x1f3c4
        0x1f3fc
    .end array-data

    :array_c0
    .array-data 4
        0x1f3c4
        0x1f3fd
    .end array-data

    :array_c1
    .array-data 4
        0x1f3c4
        0x1f3fe
    .end array-data

    :array_c2
    .array-data 4
        0x1f3c4
        0x1f3ff
    .end array-data

    :array_c3
    .array-data 4
        0x1f6a3
        0x1f3fb
    .end array-data

    :array_c4
    .array-data 4
        0x1f6a3
        0x1f3fc
    .end array-data

    :array_c5
    .array-data 4
        0x1f6a3
        0x1f3fd
    .end array-data

    :array_c6
    .array-data 4
        0x1f6a3
        0x1f3fe
    .end array-data

    :array_c7
    .array-data 4
        0x1f6a3
        0x1f3ff
    .end array-data

    :array_c8
    .array-data 4
        0x1f3ca
        0x1f3fb
    .end array-data

    :array_c9
    .array-data 4
        0x1f3ca
        0x1f3fc
    .end array-data

    :array_ca
    .array-data 4
        0x1f3ca
        0x1f3fd
    .end array-data

    :array_cb
    .array-data 4
        0x1f3ca
        0x1f3fe
    .end array-data

    :array_cc
    .array-data 4
        0x1f3ca
        0x1f3ff
    .end array-data

    :array_cd
    .array-data 4
        0x26f9
        0x1f3fb
    .end array-data

    :array_ce
    .array-data 4
        0x26f9
        0x1f3fc
    .end array-data

    :array_cf
    .array-data 4
        0x26f9
        0x1f3fd
    .end array-data

    :array_d0
    .array-data 4
        0x26f9
        0x1f3fe
    .end array-data

    :array_d1
    .array-data 4
        0x26f9
        0x1f3ff
    .end array-data

    :array_d2
    .array-data 4
        0x1f3cb
        0x1f3fb
    .end array-data

    :array_d3
    .array-data 4
        0x1f3cb
        0x1f3fc
    .end array-data

    :array_d4
    .array-data 4
        0x1f3cb
        0x1f3fd
    .end array-data

    :array_d5
    .array-data 4
        0x1f3cb
        0x1f3fe
    .end array-data

    :array_d6
    .array-data 4
        0x1f3cb
        0x1f3ff
    .end array-data

    :array_d7
    .array-data 4
        0x1f6b4
        0x1f3fb
    .end array-data

    :array_d8
    .array-data 4
        0x1f6b4
        0x1f3fc
    .end array-data

    :array_d9
    .array-data 4
        0x1f6b4
        0x1f3fd
    .end array-data

    :array_da
    .array-data 4
        0x1f6b4
        0x1f3fe
    .end array-data

    :array_db
    .array-data 4
        0x1f6b4
        0x1f3ff
    .end array-data

    :array_dc
    .array-data 4
        0x1f6b5
        0x1f3fb
    .end array-data

    :array_dd
    .array-data 4
        0x1f6b5
        0x1f3fc
    .end array-data

    :array_de
    .array-data 4
        0x1f6b5
        0x1f3fd
    .end array-data

    :array_df
    .array-data 4
        0x1f6b5
        0x1f3fe
    .end array-data

    :array_e0
    .array-data 4
        0x1f6b5
        0x1f3ff
    .end array-data

    :array_e1
    .array-data 4
        0x1f938
        0x1f3fb
    .end array-data

    :array_e2
    .array-data 4
        0x1f938
        0x1f3fc
    .end array-data

    :array_e3
    .array-data 4
        0x1f938
        0x1f3fd
    .end array-data

    :array_e4
    .array-data 4
        0x1f938
        0x1f3fe
    .end array-data

    :array_e5
    .array-data 4
        0x1f938
        0x1f3ff
    .end array-data

    :array_e6
    .array-data 4
        0x1f93c
        0x1f3fb
    .end array-data

    :array_e7
    .array-data 4
        0x1f93c
        0x1f3fc
    .end array-data

    :array_e8
    .array-data 4
        0x1f93c
        0x1f3fd
    .end array-data

    :array_e9
    .array-data 4
        0x1f93c
        0x1f3fe
    .end array-data

    :array_ea
    .array-data 4
        0x1f93c
        0x1f3ff
    .end array-data

    :array_eb
    .array-data 4
        0x1f93d
        0x1f3fb
    .end array-data

    :array_ec
    .array-data 4
        0x1f93d
        0x1f3fc
    .end array-data

    :array_ed
    .array-data 4
        0x1f93d
        0x1f3fd
    .end array-data

    :array_ee
    .array-data 4
        0x1f93d
        0x1f3fe
    .end array-data

    :array_ef
    .array-data 4
        0x1f93d
        0x1f3ff
    .end array-data

    :array_f0
    .array-data 4
        0x1f93e
        0x1f3fb
    .end array-data

    :array_f1
    .array-data 4
        0x1f93e
        0x1f3fc
    .end array-data

    :array_f2
    .array-data 4
        0x1f93e
        0x1f3fd
    .end array-data

    :array_f3
    .array-data 4
        0x1f93e
        0x1f3fe
    .end array-data

    :array_f4
    .array-data 4
        0x1f93e
        0x1f3ff
    .end array-data

    :array_f5
    .array-data 4
        0x1f939
        0x1f3fb
    .end array-data

    :array_f6
    .array-data 4
        0x1f939
        0x1f3fc
    .end array-data

    :array_f7
    .array-data 4
        0x1f939
        0x1f3fd
    .end array-data

    :array_f8
    .array-data 4
        0x1f939
        0x1f3fe
    .end array-data

    :array_f9
    .array-data 4
        0x1f939
        0x1f3ff
    .end array-data

    :array_fa
    .array-data 4
        0x1f468
        0x2764
        0x1f48b
        0x1f468
    .end array-data

    :array_fb
    .array-data 4
        0x1f469
        0x2764
        0x1f48b
        0x1f469
    .end array-data

    :array_fc
    .array-data 4
        0x1f468
        0x2764
        0x1f468
    .end array-data

    :array_fd
    .array-data 4
        0x1f469
        0x2764
        0x1f469
    .end array-data

    :array_fe
    .array-data 4
        0x1f468
        0x1f469
        0x1f467
    .end array-data

    :array_ff
    .array-data 4
        0x1f468
        0x1f469
        0x1f467
        0x1f466
    .end array-data

    :array_100
    .array-data 4
        0x1f468
        0x1f469
        0x1f466
        0x1f466
    .end array-data

    :array_101
    .array-data 4
        0x1f468
        0x1f469
        0x1f467
        0x1f467
    .end array-data

    :array_102
    .array-data 4
        0x1f468
        0x1f468
        0x1f466
    .end array-data

    :array_103
    .array-data 4
        0x1f468
        0x1f468
        0x1f467
    .end array-data

    :array_104
    .array-data 4
        0x1f468
        0x1f468
        0x1f467
        0x1f466
    .end array-data

    :array_105
    .array-data 4
        0x1f468
        0x1f468
        0x1f466
        0x1f466
    .end array-data

    :array_106
    .array-data 4
        0x1f468
        0x1f468
        0x1f467
        0x1f467
    .end array-data

    :array_107
    .array-data 4
        0x1f469
        0x1f469
        0x1f466
    .end array-data

    :array_108
    .array-data 4
        0x1f469
        0x1f469
        0x1f467
    .end array-data

    :array_109
    .array-data 4
        0x1f469
        0x1f469
        0x1f467
        0x1f466
    .end array-data

    :array_10a
    .array-data 4
        0x1f469
        0x1f469
        0x1f466
        0x1f466
    .end array-data

    :array_10b
    .array-data 4
        0x1f469
        0x1f469
        0x1f467
        0x1f467
    .end array-data

    :array_10c
    .array-data 4
        0x1f4aa
        0x1f3fb
    .end array-data

    :array_10d
    .array-data 4
        0x1f4aa
        0x1f3fc
    .end array-data

    :array_10e
    .array-data 4
        0x1f4aa
        0x1f3fd
    .end array-data

    :array_10f
    .array-data 4
        0x1f4aa
        0x1f3fe
    .end array-data

    :array_110
    .array-data 4
        0x1f4aa
        0x1f3ff
    .end array-data

    :array_111
    .array-data 4
        0x1f933
        0x1f3fb
    .end array-data

    :array_112
    .array-data 4
        0x1f933
        0x1f3fc
    .end array-data

    :array_113
    .array-data 4
        0x1f933
        0x1f3fd
    .end array-data

    :array_114
    .array-data 4
        0x1f933
        0x1f3fe
    .end array-data

    :array_115
    .array-data 4
        0x1f933
        0x1f3ff
    .end array-data

    :array_116
    .array-data 4
        0x1f448
        0x1f3fb
    .end array-data

    :array_117
    .array-data 4
        0x1f448
        0x1f3fc
    .end array-data

    :array_118
    .array-data 4
        0x1f448
        0x1f3fd
    .end array-data

    :array_119
    .array-data 4
        0x1f448
        0x1f3fe
    .end array-data

    :array_11a
    .array-data 4
        0x1f448
        0x1f3ff
    .end array-data

    :array_11b
    .array-data 4
        0x1f449
        0x1f3fb
    .end array-data

    :array_11c
    .array-data 4
        0x1f449
        0x1f3fc
    .end array-data

    :array_11d
    .array-data 4
        0x1f449
        0x1f3fd
    .end array-data

    :array_11e
    .array-data 4
        0x1f449
        0x1f3fe
    .end array-data

    :array_11f
    .array-data 4
        0x1f449
        0x1f3ff
    .end array-data

    :array_120
    .array-data 4
        0x261d
        0x1f3fb
    .end array-data

    :array_121
    .array-data 4
        0x261d
        0x1f3fc
    .end array-data

    :array_122
    .array-data 4
        0x261d
        0x1f3fd
    .end array-data

    :array_123
    .array-data 4
        0x261d
        0x1f3fe
    .end array-data

    :array_124
    .array-data 4
        0x261d
        0x1f3ff
    .end array-data

    :array_125
    .array-data 4
        0x1f446
        0x1f3fb
    .end array-data

    :array_126
    .array-data 4
        0x1f446
        0x1f3fc
    .end array-data

    :array_127
    .array-data 4
        0x1f446
        0x1f3fd
    .end array-data

    :array_128
    .array-data 4
        0x1f446
        0x1f3fe
    .end array-data

    :array_129
    .array-data 4
        0x1f446
        0x1f3ff
    .end array-data

    :array_12a
    .array-data 4
        0x1f595
        0x1f3fb
    .end array-data

    :array_12b
    .array-data 4
        0x1f595
        0x1f3fc
    .end array-data

    :array_12c
    .array-data 4
        0x1f595
        0x1f3fd
    .end array-data

    :array_12d
    .array-data 4
        0x1f595
        0x1f3fe
    .end array-data

    :array_12e
    .array-data 4
        0x1f595
        0x1f3ff
    .end array-data

    :array_12f
    .array-data 4
        0x1f447
        0x1f3fb
    .end array-data

    :array_130
    .array-data 4
        0x1f447
        0x1f3fc
    .end array-data

    :array_131
    .array-data 4
        0x1f447
        0x1f3fd
    .end array-data

    :array_132
    .array-data 4
        0x1f447
        0x1f3fe
    .end array-data

    :array_133
    .array-data 4
        0x1f447
        0x1f3ff
    .end array-data

    :array_134
    .array-data 4
        0x270c
        0x1f3fb
    .end array-data

    :array_135
    .array-data 4
        0x270c
        0x1f3fc
    .end array-data

    :array_136
    .array-data 4
        0x270c
        0x1f3fd
    .end array-data

    :array_137
    .array-data 4
        0x270c
        0x1f3fe
    .end array-data

    :array_138
    .array-data 4
        0x270c
        0x1f3ff
    .end array-data

    :array_139
    .array-data 4
        0x1f91e
        0x1f3fb
    .end array-data

    :array_13a
    .array-data 4
        0x1f91e
        0x1f3fc
    .end array-data

    :array_13b
    .array-data 4
        0x1f91e
        0x1f3fd
    .end array-data

    :array_13c
    .array-data 4
        0x1f91e
        0x1f3fe
    .end array-data

    :array_13d
    .array-data 4
        0x1f91e
        0x1f3ff
    .end array-data

    :array_13e
    .array-data 4
        0x1f596
        0x1f3fb
    .end array-data

    :array_13f
    .array-data 4
        0x1f596
        0x1f3fc
    .end array-data

    :array_140
    .array-data 4
        0x1f596
        0x1f3fd
    .end array-data

    :array_141
    .array-data 4
        0x1f596
        0x1f3fe
    .end array-data

    :array_142
    .array-data 4
        0x1f596
        0x1f3ff
    .end array-data

    :array_143
    .array-data 4
        0x1f918
        0x1f3fb
    .end array-data

    :array_144
    .array-data 4
        0x1f918
        0x1f3fc
    .end array-data

    :array_145
    .array-data 4
        0x1f918
        0x1f3fd
    .end array-data

    :array_146
    .array-data 4
        0x1f918
        0x1f3fe
    .end array-data

    :array_147
    .array-data 4
        0x1f918
        0x1f3ff
    .end array-data

    :array_148
    .array-data 4
        0x1f919
        0x1f3fb
    .end array-data

    :array_149
    .array-data 4
        0x1f919
        0x1f3fc
    .end array-data

    :array_14a
    .array-data 4
        0x1f919
        0x1f3fd
    .end array-data

    :array_14b
    .array-data 4
        0x1f919
        0x1f3fe
    .end array-data

    :array_14c
    .array-data 4
        0x1f919
        0x1f3ff
    .end array-data

    :array_14d
    .array-data 4
        0x1f590
        0x1f3fb
    .end array-data

    :array_14e
    .array-data 4
        0x1f590
        0x1f3fc
    .end array-data

    :array_14f
    .array-data 4
        0x1f590
        0x1f3fd
    .end array-data

    :array_150
    .array-data 4
        0x1f590
        0x1f3fe
    .end array-data

    :array_151
    .array-data 4
        0x1f590
        0x1f3ff
    .end array-data

    :array_152
    .array-data 4
        0x270b
        0x1f3fb
    .end array-data

    :array_153
    .array-data 4
        0x270b
        0x1f3fc
    .end array-data

    :array_154
    .array-data 4
        0x270b
        0x1f3fd
    .end array-data

    :array_155
    .array-data 4
        0x270b
        0x1f3fe
    .end array-data

    :array_156
    .array-data 4
        0x270b
        0x1f3ff
    .end array-data

    :array_157
    .array-data 4
        0x1f44c
        0x1f3fb
    .end array-data

    :array_158
    .array-data 4
        0x1f44c
        0x1f3fc
    .end array-data

    :array_159
    .array-data 4
        0x1f44c
        0x1f3fd
    .end array-data

    :array_15a
    .array-data 4
        0x1f44c
        0x1f3fe
    .end array-data

    :array_15b
    .array-data 4
        0x1f44c
        0x1f3ff
    .end array-data

    :array_15c
    .array-data 4
        0x1f44d
        0x1f3fb
    .end array-data

    :array_15d
    .array-data 4
        0x1f44d
        0x1f3fc
    .end array-data

    :array_15e
    .array-data 4
        0x1f44d
        0x1f3fd
    .end array-data

    :array_15f
    .array-data 4
        0x1f44d
        0x1f3fe
    .end array-data

    :array_160
    .array-data 4
        0x1f44d
        0x1f3ff
    .end array-data

    :array_161
    .array-data 4
        0x1f44e
        0x1f3fb
    .end array-data

    :array_162
    .array-data 4
        0x1f44e
        0x1f3fc
    .end array-data

    :array_163
    .array-data 4
        0x1f44e
        0x1f3fd
    .end array-data

    :array_164
    .array-data 4
        0x1f44e
        0x1f3fe
    .end array-data

    :array_165
    .array-data 4
        0x1f44e
        0x1f3ff
    .end array-data

    :array_166
    .array-data 4
        0x270a
        0x1f3fb
    .end array-data

    :array_167
    .array-data 4
        0x270a
        0x1f3fc
    .end array-data

    :array_168
    .array-data 4
        0x270a
        0x1f3fd
    .end array-data

    :array_169
    .array-data 4
        0x270a
        0x1f3fe
    .end array-data

    :array_16a
    .array-data 4
        0x270a
        0x1f3ff
    .end array-data

    :array_16b
    .array-data 4
        0x1f44a
        0x1f3fb
    .end array-data

    :array_16c
    .array-data 4
        0x1f44a
        0x1f3fc
    .end array-data

    :array_16d
    .array-data 4
        0x1f44a
        0x1f3fd
    .end array-data

    :array_16e
    .array-data 4
        0x1f44a
        0x1f3fe
    .end array-data

    :array_16f
    .array-data 4
        0x1f44a
        0x1f3ff
    .end array-data

    :array_170
    .array-data 4
        0x1f91b
        0x1f3fb
    .end array-data

    :array_171
    .array-data 4
        0x1f91b
        0x1f3fc
    .end array-data

    :array_172
    .array-data 4
        0x1f91b
        0x1f3fd
    .end array-data

    :array_173
    .array-data 4
        0x1f91b
        0x1f3fe
    .end array-data

    :array_174
    .array-data 4
        0x1f91b
        0x1f3ff
    .end array-data

    :array_175
    .array-data 4
        0x1f91c
        0x1f3fb
    .end array-data

    :array_176
    .array-data 4
        0x1f91c
        0x1f3fc
    .end array-data

    :array_177
    .array-data 4
        0x1f91c
        0x1f3fd
    .end array-data

    :array_178
    .array-data 4
        0x1f91c
        0x1f3fe
    .end array-data

    :array_179
    .array-data 4
        0x1f91c
        0x1f3ff
    .end array-data

    :array_17a
    .array-data 4
        0x1f91a
        0x1f3fb
    .end array-data

    :array_17b
    .array-data 4
        0x1f91a
        0x1f3fc
    .end array-data

    :array_17c
    .array-data 4
        0x1f91a
        0x1f3fd
    .end array-data

    :array_17d
    .array-data 4
        0x1f91a
        0x1f3fe
    .end array-data

    :array_17e
    .array-data 4
        0x1f91a
        0x1f3ff
    .end array-data

    :array_17f
    .array-data 4
        0x1f44b
        0x1f3fb
    .end array-data

    :array_180
    .array-data 4
        0x1f44b
        0x1f3fc
    .end array-data

    :array_181
    .array-data 4
        0x1f44b
        0x1f3fd
    .end array-data

    :array_182
    .array-data 4
        0x1f44b
        0x1f3fe
    .end array-data

    :array_183
    .array-data 4
        0x1f44b
        0x1f3ff
    .end array-data

    :array_184
    .array-data 4
        0x1f44f
        0x1f3fb
    .end array-data

    :array_185
    .array-data 4
        0x1f44f
        0x1f3fc
    .end array-data

    :array_186
    .array-data 4
        0x1f44f
        0x1f3fd
    .end array-data

    :array_187
    .array-data 4
        0x1f44f
        0x1f3fe
    .end array-data

    :array_188
    .array-data 4
        0x1f44f
        0x1f3ff
    .end array-data

    :array_189
    .array-data 4
        0x270d
        0x1f3fb
    .end array-data

    :array_18a
    .array-data 4
        0x270d
        0x1f3fc
    .end array-data

    :array_18b
    .array-data 4
        0x270d
        0x1f3fd
    .end array-data

    :array_18c
    .array-data 4
        0x270d
        0x1f3fe
    .end array-data

    :array_18d
    .array-data 4
        0x270d
        0x1f3ff
    .end array-data

    :array_18e
    .array-data 4
        0x1f450
        0x1f3fb
    .end array-data

    :array_18f
    .array-data 4
        0x1f450
        0x1f3fc
    .end array-data

    :array_190
    .array-data 4
        0x1f450
        0x1f3fd
    .end array-data

    :array_191
    .array-data 4
        0x1f450
        0x1f3fe
    .end array-data

    :array_192
    .array-data 4
        0x1f450
        0x1f3ff
    .end array-data

    :array_193
    .array-data 4
        0x1f64c
        0x1f3fb
    .end array-data

    :array_194
    .array-data 4
        0x1f64c
        0x1f3fc
    .end array-data

    :array_195
    .array-data 4
        0x1f64c
        0x1f3fd
    .end array-data

    :array_196
    .array-data 4
        0x1f64c
        0x1f3fe
    .end array-data

    :array_197
    .array-data 4
        0x1f64c
        0x1f3ff
    .end array-data

    :array_198
    .array-data 4
        0x1f64f
        0x1f3fb
    .end array-data

    :array_199
    .array-data 4
        0x1f64f
        0x1f3fc
    .end array-data

    :array_19a
    .array-data 4
        0x1f64f
        0x1f3fd
    .end array-data

    :array_19b
    .array-data 4
        0x1f64f
        0x1f3fe
    .end array-data

    :array_19c
    .array-data 4
        0x1f64f
        0x1f3ff
    .end array-data

    :array_19d
    .array-data 4
        0x1f91d
        0x1f3fb
    .end array-data

    :array_19e
    .array-data 4
        0x1f91d
        0x1f3fc
    .end array-data

    :array_19f
    .array-data 4
        0x1f91d
        0x1f3fd
    .end array-data

    :array_1a0
    .array-data 4
        0x1f91d
        0x1f3fe
    .end array-data

    :array_1a1
    .array-data 4
        0x1f91d
        0x1f3ff
    .end array-data

    :array_1a2
    .array-data 4
        0x1f485
        0x1f3fb
    .end array-data

    :array_1a3
    .array-data 4
        0x1f485
        0x1f3fc
    .end array-data

    :array_1a4
    .array-data 4
        0x1f485
        0x1f3fd
    .end array-data

    :array_1a5
    .array-data 4
        0x1f485
        0x1f3fe
    .end array-data

    :array_1a6
    .array-data 4
        0x1f485
        0x1f3ff
    .end array-data

    :array_1a7
    .array-data 4
        0x1f442
        0x1f3fb
    .end array-data

    :array_1a8
    .array-data 4
        0x1f442
        0x1f3fc
    .end array-data

    :array_1a9
    .array-data 4
        0x1f442
        0x1f3fd
    .end array-data

    :array_1aa
    .array-data 4
        0x1f442
        0x1f3fe
    .end array-data

    :array_1ab
    .array-data 4
        0x1f442
        0x1f3ff
    .end array-data

    :array_1ac
    .array-data 4
        0x1f443
        0x1f3fb
    .end array-data

    :array_1ad
    .array-data 4
        0x1f443
        0x1f3fc
    .end array-data

    :array_1ae
    .array-data 4
        0x1f443
        0x1f3fd
    .end array-data

    :array_1af
    .array-data 4
        0x1f443
        0x1f3fe
    .end array-data

    :array_1b0
    .array-data 4
        0x1f443
        0x1f3ff
    .end array-data

    :array_1b1
    .array-data 4
        0x1f441
        0x1f5e8
    .end array-data

    :array_1b2
    .array-data 4
        0x1f6c0
        0x1f3fb
    .end array-data

    :array_1b3
    .array-data 4
        0x1f6c0
        0x1f3fc
    .end array-data

    :array_1b4
    .array-data 4
        0x1f6c0
        0x1f3fd
    .end array-data

    :array_1b5
    .array-data 4
        0x1f6c0
        0x1f3fe
    .end array-data

    :array_1b6
    .array-data 4
        0x1f6c0
        0x1f3ff
    .end array-data

    :array_1b7
    .array-data 4
        0x23
        0x20e3
    .end array-data

    :array_1b8
    .array-data 4
        0x2a
        0x20e3
    .end array-data

    :array_1b9
    .array-data 4
        0x30
        0x20e3
    .end array-data

    :array_1ba
    .array-data 4
        0x31
        0x20e3
    .end array-data

    :array_1bb
    .array-data 4
        0x32
        0x20e3
    .end array-data

    :array_1bc
    .array-data 4
        0x33
        0x20e3
    .end array-data

    :array_1bd
    .array-data 4
        0x34
        0x20e3
    .end array-data

    :array_1be
    .array-data 4
        0x35
        0x20e3
    .end array-data

    :array_1bf
    .array-data 4
        0x36
        0x20e3
    .end array-data

    :array_1c0
    .array-data 4
        0x37
        0x20e3
    .end array-data

    :array_1c1
    .array-data 4
        0x38
        0x20e3
    .end array-data

    :array_1c2
    .array-data 4
        0x39
        0x20e3
    .end array-data

    :array_1c3
    .array-data 4
        0x1f3f3
        0x1f308
    .end array-data

    :array_1c4
    .array-data 4
        0x1f1e6
        0x1f1e8
    .end array-data

    :array_1c5
    .array-data 4
        0x1f1e6
        0x1f1e9
    .end array-data

    :array_1c6
    .array-data 4
        0x1f1e6
        0x1f1ea
    .end array-data

    :array_1c7
    .array-data 4
        0x1f1e6
        0x1f1eb
    .end array-data

    :array_1c8
    .array-data 4
        0x1f1e6
        0x1f1ec
    .end array-data

    :array_1c9
    .array-data 4
        0x1f1e6
        0x1f1ee
    .end array-data

    :array_1ca
    .array-data 4
        0x1f1e6
        0x1f1f1
    .end array-data

    :array_1cb
    .array-data 4
        0x1f1e6
        0x1f1f2
    .end array-data

    :array_1cc
    .array-data 4
        0x1f1e6
        0x1f1f4
    .end array-data

    :array_1cd
    .array-data 4
        0x1f1e6
        0x1f1f6
    .end array-data

    :array_1ce
    .array-data 4
        0x1f1e6
        0x1f1f7
    .end array-data

    :array_1cf
    .array-data 4
        0x1f1e6
        0x1f1f8
    .end array-data

    :array_1d0
    .array-data 4
        0x1f1e6
        0x1f1f9
    .end array-data

    :array_1d1
    .array-data 4
        0x1f1e6
        0x1f1fa
    .end array-data

    :array_1d2
    .array-data 4
        0x1f1e6
        0x1f1fc
    .end array-data

    :array_1d3
    .array-data 4
        0x1f1e6
        0x1f1fd
    .end array-data

    :array_1d4
    .array-data 4
        0x1f1e6
        0x1f1ff
    .end array-data

    :array_1d5
    .array-data 4
        0x1f1e7
        0x1f1e6
    .end array-data

    :array_1d6
    .array-data 4
        0x1f1e7
        0x1f1e7
    .end array-data

    :array_1d7
    .array-data 4
        0x1f1e7
        0x1f1e9
    .end array-data

    :array_1d8
    .array-data 4
        0x1f1e7
        0x1f1ea
    .end array-data

    :array_1d9
    .array-data 4
        0x1f1e7
        0x1f1eb
    .end array-data

    :array_1da
    .array-data 4
        0x1f1e7
        0x1f1ec
    .end array-data

    :array_1db
    .array-data 4
        0x1f1e7
        0x1f1ed
    .end array-data

    :array_1dc
    .array-data 4
        0x1f1e7
        0x1f1ee
    .end array-data

    :array_1dd
    .array-data 4
        0x1f1e7
        0x1f1ef
    .end array-data

    :array_1de
    .array-data 4
        0x1f1e7
        0x1f1f1
    .end array-data

    :array_1df
    .array-data 4
        0x1f1e7
        0x1f1f2
    .end array-data

    :array_1e0
    .array-data 4
        0x1f1e7
        0x1f1f3
    .end array-data

    :array_1e1
    .array-data 4
        0x1f1e7
        0x1f1f4
    .end array-data

    :array_1e2
    .array-data 4
        0x1f1e7
        0x1f1f6
    .end array-data

    :array_1e3
    .array-data 4
        0x1f1e7
        0x1f1f7
    .end array-data

    :array_1e4
    .array-data 4
        0x1f1e7
        0x1f1f8
    .end array-data

    :array_1e5
    .array-data 4
        0x1f1e7
        0x1f1f9
    .end array-data

    :array_1e6
    .array-data 4
        0x1f1e7
        0x1f1fb
    .end array-data

    :array_1e7
    .array-data 4
        0x1f1e7
        0x1f1fc
    .end array-data

    :array_1e8
    .array-data 4
        0x1f1e7
        0x1f1fe
    .end array-data

    :array_1e9
    .array-data 4
        0x1f1e7
        0x1f1ff
    .end array-data

    :array_1ea
    .array-data 4
        0x1f1e8
        0x1f1e6
    .end array-data

    :array_1eb
    .array-data 4
        0x1f1e8
        0x1f1e8
    .end array-data

    :array_1ec
    .array-data 4
        0x1f1e8
        0x1f1e9
    .end array-data

    :array_1ed
    .array-data 4
        0x1f1e8
        0x1f1eb
    .end array-data

    :array_1ee
    .array-data 4
        0x1f1e8
        0x1f1ec
    .end array-data

    :array_1ef
    .array-data 4
        0x1f1e8
        0x1f1ed
    .end array-data

    :array_1f0
    .array-data 4
        0x1f1e8
        0x1f1ee
    .end array-data

    :array_1f1
    .array-data 4
        0x1f1e8
        0x1f1f0
    .end array-data

    :array_1f2
    .array-data 4
        0x1f1e8
        0x1f1f1
    .end array-data

    :array_1f3
    .array-data 4
        0x1f1e8
        0x1f1f2
    .end array-data

    :array_1f4
    .array-data 4
        0x1f1e8
        0x1f1f3
    .end array-data

    :array_1f5
    .array-data 4
        0x1f1e8
        0x1f1f4
    .end array-data

    :array_1f6
    .array-data 4
        0x1f1e8
        0x1f1f5
    .end array-data

    :array_1f7
    .array-data 4
        0x1f1e8
        0x1f1f7
    .end array-data

    :array_1f8
    .array-data 4
        0x1f1e8
        0x1f1fa
    .end array-data

    :array_1f9
    .array-data 4
        0x1f1e8
        0x1f1fb
    .end array-data

    :array_1fa
    .array-data 4
        0x1f1e8
        0x1f1fc
    .end array-data

    :array_1fb
    .array-data 4
        0x1f1e8
        0x1f1fd
    .end array-data

    :array_1fc
    .array-data 4
        0x1f1e8
        0x1f1fe
    .end array-data

    :array_1fd
    .array-data 4
        0x1f1e8
        0x1f1ff
    .end array-data

    :array_1fe
    .array-data 4
        0x1f1e9
        0x1f1ea
    .end array-data

    :array_1ff
    .array-data 4
        0x1f1e9
        0x1f1ec
    .end array-data

    :array_200
    .array-data 4
        0x1f1e9
        0x1f1ef
    .end array-data

    :array_201
    .array-data 4
        0x1f1e9
        0x1f1f0
    .end array-data

    :array_202
    .array-data 4
        0x1f1e9
        0x1f1f2
    .end array-data

    :array_203
    .array-data 4
        0x1f1e9
        0x1f1f4
    .end array-data

    :array_204
    .array-data 4
        0x1f1e9
        0x1f1ff
    .end array-data

    :array_205
    .array-data 4
        0x1f1ea
        0x1f1e6
    .end array-data

    :array_206
    .array-data 4
        0x1f1ea
        0x1f1e8
    .end array-data

    :array_207
    .array-data 4
        0x1f1ea
        0x1f1ea
    .end array-data

    :array_208
    .array-data 4
        0x1f1ea
        0x1f1ec
    .end array-data

    :array_209
    .array-data 4
        0x1f1ea
        0x1f1ed
    .end array-data

    :array_20a
    .array-data 4
        0x1f1ea
        0x1f1f7
    .end array-data

    :array_20b
    .array-data 4
        0x1f1ea
        0x1f1f8
    .end array-data

    :array_20c
    .array-data 4
        0x1f1ea
        0x1f1f9
    .end array-data

    :array_20d
    .array-data 4
        0x1f1ea
        0x1f1fa
    .end array-data

    :array_20e
    .array-data 4
        0x1f1eb
        0x1f1ee
    .end array-data

    :array_20f
    .array-data 4
        0x1f1eb
        0x1f1ef
    .end array-data

    :array_210
    .array-data 4
        0x1f1eb
        0x1f1f0
    .end array-data

    :array_211
    .array-data 4
        0x1f1eb
        0x1f1f2
    .end array-data

    :array_212
    .array-data 4
        0x1f1eb
        0x1f1f4
    .end array-data

    :array_213
    .array-data 4
        0x1f1eb
        0x1f1f7
    .end array-data

    :array_214
    .array-data 4
        0x1f1ec
        0x1f1e6
    .end array-data

    :array_215
    .array-data 4
        0x1f1ec
        0x1f1e7
    .end array-data

    :array_216
    .array-data 4
        0x1f1ec
        0x1f1e9
    .end array-data

    :array_217
    .array-data 4
        0x1f1ec
        0x1f1ea
    .end array-data

    :array_218
    .array-data 4
        0x1f1ec
        0x1f1eb
    .end array-data

    :array_219
    .array-data 4
        0x1f1ec
        0x1f1ec
    .end array-data

    :array_21a
    .array-data 4
        0x1f1ec
        0x1f1ed
    .end array-data

    :array_21b
    .array-data 4
        0x1f1ec
        0x1f1ee
    .end array-data

    :array_21c
    .array-data 4
        0x1f1ec
        0x1f1f1
    .end array-data

    :array_21d
    .array-data 4
        0x1f1ec
        0x1f1f2
    .end array-data

    :array_21e
    .array-data 4
        0x1f1ec
        0x1f1f3
    .end array-data

    :array_21f
    .array-data 4
        0x1f1ec
        0x1f1f5
    .end array-data

    :array_220
    .array-data 4
        0x1f1ec
        0x1f1f6
    .end array-data

    :array_221
    .array-data 4
        0x1f1ec
        0x1f1f7
    .end array-data

    :array_222
    .array-data 4
        0x1f1ec
        0x1f1f8
    .end array-data

    :array_223
    .array-data 4
        0x1f1ec
        0x1f1f9
    .end array-data

    :array_224
    .array-data 4
        0x1f1ec
        0x1f1fa
    .end array-data

    :array_225
    .array-data 4
        0x1f1ec
        0x1f1fc
    .end array-data

    :array_226
    .array-data 4
        0x1f1ec
        0x1f1fe
    .end array-data

    :array_227
    .array-data 4
        0x1f1ed
        0x1f1f0
    .end array-data

    :array_228
    .array-data 4
        0x1f1ed
        0x1f1f2
    .end array-data

    :array_229
    .array-data 4
        0x1f1ed
        0x1f1f3
    .end array-data

    :array_22a
    .array-data 4
        0x1f1ed
        0x1f1f7
    .end array-data

    :array_22b
    .array-data 4
        0x1f1ed
        0x1f1f9
    .end array-data

    :array_22c
    .array-data 4
        0x1f1ed
        0x1f1fa
    .end array-data

    :array_22d
    .array-data 4
        0x1f1ee
        0x1f1e8
    .end array-data

    :array_22e
    .array-data 4
        0x1f1ee
        0x1f1e9
    .end array-data

    :array_22f
    .array-data 4
        0x1f1ee
        0x1f1ea
    .end array-data

    :array_230
    .array-data 4
        0x1f1ee
        0x1f1f1
    .end array-data

    :array_231
    .array-data 4
        0x1f1ee
        0x1f1f2
    .end array-data

    :array_232
    .array-data 4
        0x1f1ee
        0x1f1f3
    .end array-data

    :array_233
    .array-data 4
        0x1f1ee
        0x1f1f4
    .end array-data

    :array_234
    .array-data 4
        0x1f1ee
        0x1f1f6
    .end array-data

    :array_235
    .array-data 4
        0x1f1ee
        0x1f1f7
    .end array-data

    :array_236
    .array-data 4
        0x1f1ee
        0x1f1f8
    .end array-data

    :array_237
    .array-data 4
        0x1f1ee
        0x1f1f9
    .end array-data

    :array_238
    .array-data 4
        0x1f1ef
        0x1f1ea
    .end array-data

    :array_239
    .array-data 4
        0x1f1ef
        0x1f1f2
    .end array-data

    :array_23a
    .array-data 4
        0x1f1ef
        0x1f1f4
    .end array-data

    :array_23b
    .array-data 4
        0x1f1ef
        0x1f1f5
    .end array-data

    :array_23c
    .array-data 4
        0x1f1f0
        0x1f1ea
    .end array-data

    :array_23d
    .array-data 4
        0x1f1f0
        0x1f1ec
    .end array-data

    :array_23e
    .array-data 4
        0x1f1f0
        0x1f1ed
    .end array-data

    :array_23f
    .array-data 4
        0x1f1f0
        0x1f1ee
    .end array-data

    :array_240
    .array-data 4
        0x1f1f0
        0x1f1f2
    .end array-data

    :array_241
    .array-data 4
        0x1f1f0
        0x1f1f3
    .end array-data

    :array_242
    .array-data 4
        0x1f1f0
        0x1f1f5
    .end array-data

    :array_243
    .array-data 4
        0x1f1f0
        0x1f1f7
    .end array-data

    :array_244
    .array-data 4
        0x1f1f0
        0x1f1fc
    .end array-data

    :array_245
    .array-data 4
        0x1f1f0
        0x1f1fe
    .end array-data

    :array_246
    .array-data 4
        0x1f1f0
        0x1f1ff
    .end array-data

    :array_247
    .array-data 4
        0x1f1f1
        0x1f1e6
    .end array-data

    :array_248
    .array-data 4
        0x1f1f1
        0x1f1e7
    .end array-data

    :array_249
    .array-data 4
        0x1f1f1
        0x1f1e8
    .end array-data

    :array_24a
    .array-data 4
        0x1f1f1
        0x1f1ee
    .end array-data

    :array_24b
    .array-data 4
        0x1f1f1
        0x1f1f0
    .end array-data

    :array_24c
    .array-data 4
        0x1f1f1
        0x1f1f7
    .end array-data

    :array_24d
    .array-data 4
        0x1f1f1
        0x1f1f8
    .end array-data

    :array_24e
    .array-data 4
        0x1f1f1
        0x1f1f9
    .end array-data

    :array_24f
    .array-data 4
        0x1f1f1
        0x1f1fa
    .end array-data

    :array_250
    .array-data 4
        0x1f1f1
        0x1f1fb
    .end array-data

    :array_251
    .array-data 4
        0x1f1f1
        0x1f1fe
    .end array-data

    :array_252
    .array-data 4
        0x1f1f2
        0x1f1e6
    .end array-data

    :array_253
    .array-data 4
        0x1f1f2
        0x1f1e8
    .end array-data

    :array_254
    .array-data 4
        0x1f1f2
        0x1f1e9
    .end array-data

    :array_255
    .array-data 4
        0x1f1f2
        0x1f1ea
    .end array-data

    :array_256
    .array-data 4
        0x1f1f2
        0x1f1eb
    .end array-data

    :array_257
    .array-data 4
        0x1f1f2
        0x1f1ec
    .end array-data

    :array_258
    .array-data 4
        0x1f1f2
        0x1f1ed
    .end array-data

    :array_259
    .array-data 4
        0x1f1f2
        0x1f1f0
    .end array-data

    :array_25a
    .array-data 4
        0x1f1f2
        0x1f1f1
    .end array-data

    :array_25b
    .array-data 4
        0x1f1f2
        0x1f1f2
    .end array-data

    :array_25c
    .array-data 4
        0x1f1f2
        0x1f1f3
    .end array-data

    :array_25d
    .array-data 4
        0x1f1f2
        0x1f1f4
    .end array-data

    :array_25e
    .array-data 4
        0x1f1f2
        0x1f1f5
    .end array-data

    :array_25f
    .array-data 4
        0x1f1f2
        0x1f1f6
    .end array-data

    :array_260
    .array-data 4
        0x1f1f2
        0x1f1f7
    .end array-data

    :array_261
    .array-data 4
        0x1f1f2
        0x1f1f8
    .end array-data

    :array_262
    .array-data 4
        0x1f1f2
        0x1f1f9
    .end array-data

    :array_263
    .array-data 4
        0x1f1f2
        0x1f1fa
    .end array-data

    :array_264
    .array-data 4
        0x1f1f2
        0x1f1fb
    .end array-data

    :array_265
    .array-data 4
        0x1f1f2
        0x1f1fc
    .end array-data

    :array_266
    .array-data 4
        0x1f1f2
        0x1f1fd
    .end array-data

    :array_267
    .array-data 4
        0x1f1f2
        0x1f1fe
    .end array-data

    :array_268
    .array-data 4
        0x1f1f2
        0x1f1ff
    .end array-data

    :array_269
    .array-data 4
        0x1f1f3
        0x1f1e6
    .end array-data

    :array_26a
    .array-data 4
        0x1f1f3
        0x1f1e8
    .end array-data

    :array_26b
    .array-data 4
        0x1f1f3
        0x1f1ea
    .end array-data

    :array_26c
    .array-data 4
        0x1f1f3
        0x1f1eb
    .end array-data

    :array_26d
    .array-data 4
        0x1f1f3
        0x1f1ec
    .end array-data

    :array_26e
    .array-data 4
        0x1f1f3
        0x1f1ee
    .end array-data

    :array_26f
    .array-data 4
        0x1f1f3
        0x1f1f1
    .end array-data

    :array_270
    .array-data 4
        0x1f1f3
        0x1f1f4
    .end array-data

    :array_271
    .array-data 4
        0x1f1f3
        0x1f1f5
    .end array-data

    :array_272
    .array-data 4
        0x1f1f3
        0x1f1f7
    .end array-data

    :array_273
    .array-data 4
        0x1f1f3
        0x1f1fa
    .end array-data

    :array_274
    .array-data 4
        0x1f1f3
        0x1f1ff
    .end array-data

    :array_275
    .array-data 4
        0x1f1f4
        0x1f1f2
    .end array-data

    :array_276
    .array-data 4
        0x1f1f5
        0x1f1e6
    .end array-data

    :array_277
    .array-data 4
        0x1f1f5
        0x1f1ea
    .end array-data

    :array_278
    .array-data 4
        0x1f1f5
        0x1f1eb
    .end array-data

    :array_279
    .array-data 4
        0x1f1f5
        0x1f1ec
    .end array-data

    :array_27a
    .array-data 4
        0x1f1f5
        0x1f1ed
    .end array-data

    :array_27b
    .array-data 4
        0x1f1f5
        0x1f1f0
    .end array-data

    :array_27c
    .array-data 4
        0x1f1f5
        0x1f1f1
    .end array-data

    :array_27d
    .array-data 4
        0x1f1f5
        0x1f1f2
    .end array-data

    :array_27e
    .array-data 4
        0x1f1f5
        0x1f1f3
    .end array-data

    :array_27f
    .array-data 4
        0x1f1f5
        0x1f1f7
    .end array-data

    :array_280
    .array-data 4
        0x1f1f5
        0x1f1f8
    .end array-data

    :array_281
    .array-data 4
        0x1f1f5
        0x1f1f9
    .end array-data

    :array_282
    .array-data 4
        0x1f1f5
        0x1f1fc
    .end array-data

    :array_283
    .array-data 4
        0x1f1f5
        0x1f1fe
    .end array-data

    :array_284
    .array-data 4
        0x1f1f6
        0x1f1e6
    .end array-data

    :array_285
    .array-data 4
        0x1f1f7
        0x1f1ea
    .end array-data

    :array_286
    .array-data 4
        0x1f1f7
        0x1f1f4
    .end array-data

    :array_287
    .array-data 4
        0x1f1f7
        0x1f1f8
    .end array-data

    :array_288
    .array-data 4
        0x1f1f7
        0x1f1fa
    .end array-data

    :array_289
    .array-data 4
        0x1f1f7
        0x1f1fc
    .end array-data

    :array_28a
    .array-data 4
        0x1f1f8
        0x1f1e6
    .end array-data

    :array_28b
    .array-data 4
        0x1f1f8
        0x1f1e7
    .end array-data

    :array_28c
    .array-data 4
        0x1f1f8
        0x1f1e8
    .end array-data

    :array_28d
    .array-data 4
        0x1f1f8
        0x1f1e9
    .end array-data

    :array_28e
    .array-data 4
        0x1f1f8
        0x1f1ea
    .end array-data

    :array_28f
    .array-data 4
        0x1f1f8
        0x1f1ec
    .end array-data

    :array_290
    .array-data 4
        0x1f1f8
        0x1f1ed
    .end array-data

    :array_291
    .array-data 4
        0x1f1f8
        0x1f1ee
    .end array-data

    :array_292
    .array-data 4
        0x1f1f8
        0x1f1ef
    .end array-data

    :array_293
    .array-data 4
        0x1f1f8
        0x1f1f0
    .end array-data

    :array_294
    .array-data 4
        0x1f1f8
        0x1f1f1
    .end array-data

    :array_295
    .array-data 4
        0x1f1f8
        0x1f1f2
    .end array-data

    :array_296
    .array-data 4
        0x1f1f8
        0x1f1f3
    .end array-data

    :array_297
    .array-data 4
        0x1f1f8
        0x1f1f4
    .end array-data

    :array_298
    .array-data 4
        0x1f1f8
        0x1f1f7
    .end array-data

    :array_299
    .array-data 4
        0x1f1f8
        0x1f1f8
    .end array-data

    :array_29a
    .array-data 4
        0x1f1f8
        0x1f1f9
    .end array-data

    :array_29b
    .array-data 4
        0x1f1f8
        0x1f1fb
    .end array-data

    :array_29c
    .array-data 4
        0x1f1f8
        0x1f1fd
    .end array-data

    :array_29d
    .array-data 4
        0x1f1f8
        0x1f1fe
    .end array-data

    :array_29e
    .array-data 4
        0x1f1f8
        0x1f1ff
    .end array-data

    :array_29f
    .array-data 4
        0x1f1f9
        0x1f1e6
    .end array-data

    :array_2a0
    .array-data 4
        0x1f1f9
        0x1f1e8
    .end array-data

    :array_2a1
    .array-data 4
        0x1f1f9
        0x1f1e9
    .end array-data

    :array_2a2
    .array-data 4
        0x1f1f9
        0x1f1eb
    .end array-data

    :array_2a3
    .array-data 4
        0x1f1f9
        0x1f1ec
    .end array-data

    :array_2a4
    .array-data 4
        0x1f1f9
        0x1f1ed
    .end array-data

    :array_2a5
    .array-data 4
        0x1f1f9
        0x1f1ef
    .end array-data

    :array_2a6
    .array-data 4
        0x1f1f9
        0x1f1f0
    .end array-data

    :array_2a7
    .array-data 4
        0x1f1f9
        0x1f1f1
    .end array-data

    :array_2a8
    .array-data 4
        0x1f1f9
        0x1f1f2
    .end array-data

    :array_2a9
    .array-data 4
        0x1f1f9
        0x1f1f3
    .end array-data

    :array_2aa
    .array-data 4
        0x1f1f9
        0x1f1f4
    .end array-data

    :array_2ab
    .array-data 4
        0x1f1f9
        0x1f1f7
    .end array-data

    :array_2ac
    .array-data 4
        0x1f1f9
        0x1f1f9
    .end array-data

    :array_2ad
    .array-data 4
        0x1f1f9
        0x1f1fb
    .end array-data

    :array_2ae
    .array-data 4
        0x1f1f9
        0x1f1fc
    .end array-data

    :array_2af
    .array-data 4
        0x1f1f9
        0x1f1ff
    .end array-data

    :array_2b0
    .array-data 4
        0x1f1fa
        0x1f1e6
    .end array-data

    :array_2b1
    .array-data 4
        0x1f1fa
        0x1f1ec
    .end array-data

    :array_2b2
    .array-data 4
        0x1f1fa
        0x1f1f2
    .end array-data

    :array_2b3
    .array-data 4
        0x1f1fa
        0x1f1f8
    .end array-data

    :array_2b4
    .array-data 4
        0x1f1fa
        0x1f1fe
    .end array-data

    :array_2b5
    .array-data 4
        0x1f1fa
        0x1f1ff
    .end array-data

    :array_2b6
    .array-data 4
        0x1f1fb
        0x1f1e6
    .end array-data

    :array_2b7
    .array-data 4
        0x1f1fb
        0x1f1e8
    .end array-data

    :array_2b8
    .array-data 4
        0x1f1fb
        0x1f1ea
    .end array-data

    :array_2b9
    .array-data 4
        0x1f1fb
        0x1f1ec
    .end array-data

    :array_2ba
    .array-data 4
        0x1f1fb
        0x1f1ee
    .end array-data

    :array_2bb
    .array-data 4
        0x1f1fb
        0x1f1f3
    .end array-data

    :array_2bc
    .array-data 4
        0x1f1fb
        0x1f1fa
    .end array-data

    :array_2bd
    .array-data 4
        0x1f1fc
        0x1f1eb
    .end array-data

    :array_2be
    .array-data 4
        0x1f1fc
        0x1f1f8
    .end array-data

    :array_2bf
    .array-data 4
        0x1f1fd
        0x1f1f0
    .end array-data

    :array_2c0
    .array-data 4
        0x1f1fe
        0x1f1ea
    .end array-data

    :array_2c1
    .array-data 4
        0x1f1fe
        0x1f1f9
    .end array-data

    :array_2c2
    .array-data 4
        0x1f1ff
        0x1f1e6
    .end array-data

    :array_2c3
    .array-data 4
        0x1f1ff
        0x1f1f2
    .end array-data

    :array_2c4
    .array-data 4
        0x1f1ff
        0x1f1fc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
