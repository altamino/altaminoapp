.class public Lcom/narvii/util/emojione/EmojioneShortName;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 16

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/emojione/EmojioneShortName;->_shortNameToUnicode:Ljava/util/HashMap;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4af

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "100"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f522

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1234"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f600

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "grinning"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f601

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "grin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f602

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "joy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f923

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rofl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f603

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smiley"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f604

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f605

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sweat_smile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f606

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "laughing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f609

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blush"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "yum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sunglasses"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heart_eyes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f618

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kissing_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f617

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kissing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f619

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kissing_smiling_eyes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kissing_closed_eyes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x263a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "relaxed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f642

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "slight_smile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f917

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hugging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f914

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thinking"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f610

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "neutral_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f611

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "expressionless"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f636

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_mouth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f644

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rolling_eyes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smirk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f623

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "persevere"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f625

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "disappointed_relieved"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_mouth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f910

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "zipper_mouth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hushed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sleepy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tired_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f634

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sleeping"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "relieved"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f913

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nerd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "stuck_out_tongue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "stuck_out_tongue_winking_eye"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "stuck_out_tongue_closed_eyes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f924

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "drooling_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f612

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "unamused"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f613

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sweat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f614

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pensive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f615

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "confused"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f643

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "upside_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f911

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "money_mouth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f632

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "astonished"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2639

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "frowning2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f641

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "slight_frown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f616

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "confounded"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "disappointed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "worried"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f624

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "triumph"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f622

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sob"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f626

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "frowning"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f627

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "anguished"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f628

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fearful"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f629

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "weary"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "grimacing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f630

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cold_sweat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f631

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scream"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f633

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "flushed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f635

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dizzy_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f621

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f620

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "angry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f607

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "innocent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f920

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cowboy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f921

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f925

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lying_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f637

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mask"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f912

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thermometer_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f915

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "head_bandage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f922

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nauseated_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f927

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sneezing_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f608

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smiling_imp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "imp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f479

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "japanese_ogre"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "japanese_goblin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f480

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "skull"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2620

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "skull_crossbones"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ghost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "alien"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "space_invader"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f916

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "robot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "poop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smiley_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f638

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smile_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f639

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "joy_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heart_eyes_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smirk_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kissing_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f640

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scream_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crying_cat_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pouting_cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f648

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "see_no_evil"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f649

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hear_no_evil"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "speak_no_evil"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v5, 0x1f3fb

    filled-new-array {v2, v5}, [I

    move-result-object v2

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boy_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v7, 0x1f3fc

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boy_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v8, 0x1f3fd

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boy_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v9, 0x1f3fe

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boy_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v10, 0x1f3ff

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boy_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "girl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "girl_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "girl_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "girl_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "girl_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "girl_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f468

    filled-new-array {v2}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "man"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v5}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v11, "man_tone1"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v7}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v11, "man_tone2"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v8}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v11, "man_tone3"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v9}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v11, "man_tone4"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v10}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v11, "man_tone5"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f469

    filled-new-array {v11}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "woman"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "woman_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "woman_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "woman_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "woman_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "woman_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f474

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_man"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f474

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_man_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f474

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_man_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f474

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_man_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f474

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_man_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f474

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_man_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f475

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_woman"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f475

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_woman_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f475

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_woman_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f475

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_woman_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f475

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_woman_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f475

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "older_woman_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f476

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "baby"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f476

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "baby_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f476

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "baby_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f476

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "baby_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f476

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "baby_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f476

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "baby_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f47c

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "angel"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f47c

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "angel_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f47c

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "angel_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f47c

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "angel_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f47c

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "angel_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f47c

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "angel_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46e

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cop"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46e

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cop_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46e

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cop_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46e

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cop_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46e

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cop_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46e

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cop_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f575

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "spy"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f575

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "spy_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f575

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "spy_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f575

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "spy_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f575

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "spy_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f575

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "spy_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f482

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "guardsman"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f482

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "guardsman_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f482

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "guardsman_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f482

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "guardsman_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f482

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "guardsman_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f482

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "guardsman_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f477

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "construction_worker"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f477

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "construction_worker_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f477

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "construction_worker_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f477

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "construction_worker_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f477

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "construction_worker_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f477

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "construction_worker_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f473

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_turban"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f473

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_turban_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f473

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_turban_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f473

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_turban_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f473

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_turban_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f473

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_turban_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f471

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_blond_hair"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f471

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_blond_hair_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f471

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_blond_hair_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f471

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_blond_hair_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f471

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_blond_hair_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f471

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_blond_hair_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f385

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "santa"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f385

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "santa_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f385

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "santa_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f385

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "santa_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f385

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "santa_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f385

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "santa_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f936

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mrs_claus"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f936

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mrs_claus_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f936

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mrs_claus_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f936

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mrs_claus_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f936

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mrs_claus_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f936

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mrs_claus_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f478

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "princess"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f478

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "princess_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f478

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "princess_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f478

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "princess_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f478

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "princess_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f478

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "princess_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f934

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "prince"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f934

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "prince_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f934

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "prince_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f934

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "prince_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f934

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "prince_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f934

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "prince_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f470

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bride_with_veil"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f470

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bride_with_veil_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f470

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bride_with_veil_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f470

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bride_with_veil_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f470

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bride_with_veil_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f470

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bride_with_veil_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f935

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_in_tuxedo"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f935

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_in_tuxedo_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f935

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_in_tuxedo_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f935

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_in_tuxedo_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f935

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_in_tuxedo_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f935

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_in_tuxedo_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f930

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "pregnant_woman"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f930

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "pregnant_woman_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f930

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "pregnant_woman_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f930

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "pregnant_woman_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f930

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "pregnant_woman_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f930

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "pregnant_woman_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f472

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_gua_pi_mao"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f472

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_gua_pi_mao_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f472

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_gua_pi_mao_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f472

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_gua_pi_mao_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f472

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_gua_pi_mao_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f472

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_with_gua_pi_mao_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64d

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_frowning"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64d

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_frowning_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64d

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_frowning_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64d

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_frowning_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64d

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_frowning_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64d

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_frowning_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64e

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_pouting_face"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64e

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_pouting_face_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64e

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_pouting_face_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64e

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_pouting_face_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64e

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_pouting_face_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64e

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "person_with_pouting_face_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f645

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "no_good"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f645

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "no_good_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f645

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "no_good_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f645

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "no_good_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f645

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "no_good_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f645

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "no_good_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f646

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "ok_woman"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f646

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "ok_woman_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f646

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "ok_woman_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f646

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "ok_woman_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f646

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "ok_woman_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f646

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "ok_woman_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f481

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "information_desk_person"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f481

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "information_desk_person_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f481

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "information_desk_person_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f481

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "information_desk_person_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f481

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "information_desk_person_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f481

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "information_desk_person_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64b

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "raising_hand"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64b

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "raising_hand_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64b

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "raising_hand_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64b

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "raising_hand_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64b

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "raising_hand_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f64b

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "raising_hand_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f647

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bow"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f647

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bow_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f647

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bow_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f647

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bow_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f647

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bow_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f647

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bow_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f926

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "face_palm"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f926

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "face_palm_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f926

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "face_palm_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f926

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "face_palm_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f926

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "face_palm_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f926

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "face_palm_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f937

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "shrug"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f937

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "shrug_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f937

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "shrug_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f937

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "shrug_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f937

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "shrug_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f937

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "shrug_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f486

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "massage"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f486

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "massage_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f486

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "massage_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f486

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "massage_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f486

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "massage_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f486

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "massage_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f487

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "haircut"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f487

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "haircut_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f487

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "haircut_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f487

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "haircut_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f487

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "haircut_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f487

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "haircut_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b6

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "walking"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b6

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "walking_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b6

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "walking_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b6

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "walking_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b6

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "walking_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b6

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "walking_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c3

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "runner"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c3

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "runner_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c3

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "runner_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c3

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "runner_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c3

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "runner_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c3

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "runner_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f483

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancer"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f483

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancer_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f483

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancer_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f483

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancer_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f483

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancer_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f483

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancer_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f57a

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_dancing"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f57a

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_dancing_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f57a

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_dancing_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f57a

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_dancing_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f57a

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_dancing_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f57a

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "man_dancing_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46f

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "dancers"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f574

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "levitate"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f5e3

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "speaking_head"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f464

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bust_in_silhouette"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f465

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "busts_in_silhouette"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93a

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "fencer"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c7

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "horse_racing"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c7

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "horse_racing_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c7

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "horse_racing_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c7

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "horse_racing_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c7

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "horse_racing_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c7

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "horse_racing_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f7

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "skier"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c2

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "snowboarder"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cc

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "golfer"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c4

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "surfer"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c4

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "surfer_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c4

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "surfer_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c4

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "surfer_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c4

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "surfer_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3c4

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "surfer_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6a3

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "rowboat"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6a3

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "rowboat_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6a3

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "rowboat_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6a3

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "rowboat_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6a3

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "rowboat_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6a3

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "rowboat_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ca

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "swimmer"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ca

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "swimmer_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ca

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "swimmer_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ca

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "swimmer_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ca

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "swimmer_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ca

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "swimmer_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f9

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "basketball_player"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f9

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "basketball_player_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f9

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "basketball_player_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f9

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "basketball_player_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f9

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "basketball_player_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x26f9

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "basketball_player_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cb

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "lifter"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cb

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "lifter_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cb

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "lifter_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cb

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "lifter_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cb

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "lifter_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cb

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "lifter_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b4

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bicyclist"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b4

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bicyclist_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b4

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bicyclist_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b4

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bicyclist_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b4

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bicyclist_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b4

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "bicyclist_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b5

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mountain_bicyclist"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b5

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mountain_bicyclist_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b5

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mountain_bicyclist_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b5

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mountain_bicyclist_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b5

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mountain_bicyclist_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f6b5

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "mountain_bicyclist_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3ce

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "race_car"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f3cd

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "motorcycle"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f938

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cartwheel"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f938

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cartwheel_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f938

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cartwheel_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f938

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cartwheel_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f938

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cartwheel_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f938

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "cartwheel_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93c

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "wrestlers"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93c

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "wrestlers_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93c

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "wrestlers_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93c

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "wrestlers_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93c

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "wrestlers_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93c

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "wrestlers_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93d

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "water_polo"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93d

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "water_polo_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93d

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "water_polo_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93d

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "water_polo_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93d

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "water_polo_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93d

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "water_polo_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93e

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "handball"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93e

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "handball_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93e

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "handball_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93e

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "handball_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93e

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "handball_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f93e

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "handball_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f939

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "juggling"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f939

    filled-new-array {v12, v5}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "juggling_tone1"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f939

    filled-new-array {v12, v7}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "juggling_tone2"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f939

    filled-new-array {v12, v8}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "juggling_tone3"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f939

    filled-new-array {v12, v9}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "juggling_tone4"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f939

    filled-new-array {v12, v10}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "juggling_tone5"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46b

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "couple"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46c

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "two_men_holding_hands"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46d

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v12, "two_women_holding_hands"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f48f

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "couplekiss"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x2764

    const v13, 0x1f48b

    filled-new-array {v2, v12, v13, v2}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "kiss_mm"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x2764

    const v13, 0x1f48b

    filled-new-array {v11, v12, v13, v11}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "kiss_ww"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f491

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "couple_with_heart"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x2764

    filled-new-array {v2, v12, v2}, [I

    move-result-object v12

    const/4 v13, 0x3

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "couple_mm"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v1, Ljava/lang/String;

    const/16 v12, 0x2764

    filled-new-array {v11, v12, v11}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "couple_ww"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f46a

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f467

    filled-new-array {v2, v11, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mwg"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f467

    const v13, 0x1f466

    filled-new-array {v2, v11, v12, v13}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mwgb"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f466

    const v13, 0x1f466

    filled-new-array {v2, v11, v12, v13}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mwbb"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f467

    const v13, 0x1f467

    filled-new-array {v2, v11, v12, v13}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mwgg"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f466

    filled-new-array {v2, v2, v12}, [I

    move-result-object v12

    const/4 v13, 0x3

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mmb"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f467

    filled-new-array {v2, v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mmg"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f467

    const v13, 0x1f466

    filled-new-array {v2, v2, v12, v13}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mmgb"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f466

    const v13, 0x1f466

    filled-new-array {v2, v2, v12, v13}, [I

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {v1, v12, v3, v13}, Ljava/lang/String;-><init>([III)V

    const-string v12, "family_mmbb"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f467

    const v13, 0x1f467

    filled-new-array {v2, v2, v12, v13}, [I

    move-result-object v2

    const/4 v12, 0x4

    invoke-direct {v1, v2, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v2, "family_mmgg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v11, v11, v2}, [I

    move-result-object v2

    const/4 v12, 0x3

    invoke-direct {v1, v2, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v2, "family_wwb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v11, v11, v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v2, "family_wwg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    const v12, 0x1f466

    filled-new-array {v11, v11, v2, v12}, [I

    move-result-object v2

    const/4 v12, 0x4

    invoke-direct {v1, v2, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v2, "family_wwgb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v12, 0x1f466

    filled-new-array {v11, v11, v2, v12}, [I

    move-result-object v2

    const/4 v12, 0x4

    invoke-direct {v1, v2, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v2, "family_wwbb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    const v12, 0x1f467

    filled-new-array {v11, v11, v2, v12}, [I

    move-result-object v2

    const/4 v11, 0x4

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "family_wwgg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "muscle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "muscle_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "muscle_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "muscle_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "muscle_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "muscle_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "selfie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "selfie_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "selfie_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "selfie_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "selfie_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "selfie_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_left"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_left_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_left_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_left_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_left_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_left_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_right_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_right_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_right_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_right_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_right_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_2_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_2_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_2_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_2_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_up_2_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "middle_finger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "middle_finger_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "middle_finger_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "middle_finger_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "middle_finger_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "middle_finger_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_down_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_down_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_down_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_down_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "point_down_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "v_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "v_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "v_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "v_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "v_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fingers_crossed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fingers_crossed_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fingers_crossed_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fingers_crossed_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fingers_crossed_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fingers_crossed_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vulcan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vulcan_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vulcan_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vulcan_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vulcan_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vulcan_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metal_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metal_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metal_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metal_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metal_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "call_me"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "call_me_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "call_me_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "call_me_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "call_me_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "call_me_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hand_splayed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hand_splayed_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hand_splayed_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hand_splayed_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hand_splayed_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hand_splayed_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hand_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hand_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hand_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hand_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hand_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok_hand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok_hand_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok_hand_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok_hand_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok_hand_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok_hand_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsup_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsup_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsup_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsup_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsup_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsdown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsdown_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsdown_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsdown_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsdown_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thumbsdown_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fist"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fist_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fist_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fist_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fist_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fist_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "punch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "punch_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "punch_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "punch_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "punch_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "punch_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_facing_fist"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_facing_fist_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_facing_fist_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_facing_fist_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_facing_fist_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_facing_fist_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "right_facing_fist"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "right_facing_fist_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "right_facing_fist_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "right_facing_fist_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "right_facing_fist_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "right_facing_fist_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_back_of_hand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_back_of_hand_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_back_of_hand_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_back_of_hand_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_back_of_hand_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_back_of_hand_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wave"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wave_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wave_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wave_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wave_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wave_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clap_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clap_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clap_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clap_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clap_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "writing_hand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "writing_hand_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "writing_hand_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "writing_hand_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "writing_hand_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "writing_hand_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_hands"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_hands_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_hands_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_hands_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_hands_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_hands_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hands"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hands_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hands_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hands_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hands_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "raised_hands_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pray_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pray_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pray_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pray_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pray_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handshake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handshake_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handshake_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handshake_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handshake_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handshake_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nail_care"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nail_care_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nail_care_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nail_care_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nail_care_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nail_care_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nose"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nose_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nose_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nose_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nose_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nose_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f463

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "footprints"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f440

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eyes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f441

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eye"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f441

    const v11, 0x1f5e8

    filled-new-array {v2, v11}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eye_in_speech_bubble"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f445

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tongue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f444

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lips"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kiss"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f498

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cupid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2764

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f493

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heartbeat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f494

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "broken_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f495

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "two_hearts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f496

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sparkling_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f497

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heartpulse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f499

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blue_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "green_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "yellow_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "purple_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gift_heart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "revolving_hearts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heart_decoration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2763

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heart_exclamation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "love_letter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "zzz"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "anger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bomb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sweat_drops"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dizzy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ac

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "speech_balloon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "speech_left"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "anger_right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ad

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thought_balloon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f573

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hole"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f453

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eyeglasses"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f576

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dark_sunglasses"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f454

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "necktie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f455

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shirt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f456

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "jeans"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f457

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f458

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kimono"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f459

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bikini"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "womans_clothes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "purse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "handbag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pouch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shopping_bags"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f392

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "school_satchel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mans_shoe"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "athletic_shoe"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f460

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "high_heel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f461

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sandal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f462

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f451

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f452

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "womans_hat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tophat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f393

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mortar_board"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "helmet_with_cross"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ff

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "prayer_beads"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f484

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lipstick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ring"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gem"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f435

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "monkey_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f412

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "monkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gorilla"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f436

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f415

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dog2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f429

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "poodle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wolf"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fox"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f431

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f408

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cat2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f981

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lion_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tiger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f405

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tiger2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f406

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "leopard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f434

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "horse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "racehorse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "deer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f984

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "unicorn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f402

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ox"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f403

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "water_buffalo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f404

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cow2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f437

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f416

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pig2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f417

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pig_nose"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ram"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f411

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sheep"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f410

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "goat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dromedary_camel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "camel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f418

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "elephant"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rhino"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mouse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f401

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mouse2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f400

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f439

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hamster"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f430

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rabbit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f407

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rabbit2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chipmunk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f987

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bear"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f428

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "koala"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "panda_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "feet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f983

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "turkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f414

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chicken"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f413

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rooster"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f423

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hatching_chick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f424

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "baby_chick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f425

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hatched_chick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f426

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bird"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f427

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "penguin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dove"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f985

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eagle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f986

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "duck"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f989

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "owl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f438

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "frog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crocodile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f422

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "turtle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lizard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "snake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f432

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dragon_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f409

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dragon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f433

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "whale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "whale2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dolphin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fish"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f420

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tropical_fish"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f421

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blowfish"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f988

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f419

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "octopus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f980

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crab"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f990

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shrimp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f991

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "squid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "butterfly"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "snail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bug"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ant"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bee"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "beetle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f577

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "spider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f578

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "spider_web"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f982

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scorpion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f490

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bouquet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f338

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cherry_blossom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_flower"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rosette"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f339

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rose"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f940

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wilted_rose"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hibiscus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sunflower"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blossom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f337

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tulip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f331

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "seedling"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f332

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "evergreen_tree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f333

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "deciduous_tree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f334

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "palm_tree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f335

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cactus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ear_of_rice"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "herb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2618

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shamrock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f340

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "four_leaf_clover"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f341

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "maple_leaf"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f342

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fallen_leaf"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f343

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "leaves"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f347

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "grapes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f348

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "melon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f349

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "watermelon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tangerine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lemon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "banana"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pineapple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "apple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "green_apple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f350

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pear"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f351

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "peach"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f352

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cherries"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f353

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "strawberry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kiwi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f345

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tomato"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f951

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "avocado"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f346

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eggplant"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f954

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "potato"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f955

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "carrot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "corn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f336

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hot_pepper"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f952

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cucumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f344

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mushroom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "peanuts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f330

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chestnut"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bread"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f950

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "croissant"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f956

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "french_bread"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pancakes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f9c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cheese"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f356

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "meat_on_bone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f357

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "poultry_leg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f953

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bacon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f354

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hamburger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fries"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f355

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pizza"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hotdog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "taco"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "burrito"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f959

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "stuffed_flatbread"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "egg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f373

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cooking"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f958

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shallow_pan_of_food"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f372

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "stew"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f957

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "salad"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "popcorn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f371

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bento"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f358

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rice_cracker"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f359

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rice_ball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rice"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "curry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ramen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "spaghetti"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f360

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sweet_potato"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f362

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "oden"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f363

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sushi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f364

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fried_shrimp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f365

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fish_cake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f361

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dango"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f366

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "icecream"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f367

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shaved_ice"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f368

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ice_cream"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f369

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "doughnut"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cookie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f382

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "birthday"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f370

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chocolate_bar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "candy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lollipop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "custard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "honey_pot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "baby_bottle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "milk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2615

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "coffee"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f375

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tea"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f376

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "champagne"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f377

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wine_glass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f378

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cocktail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f379

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tropical_drink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "beer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "beers"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f942

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "champagne_glass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f943

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tumbler_glass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fork_knife_plate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f374

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fork_and_knife"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f944

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "spoon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "knife"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "amphora"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "earth_africa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "earth_americas"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "earth_asia"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f310

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "globe_with_meridians"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "map"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fe

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "japan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mountain_snow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mountain"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "volcano"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mount_fuji"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "camping"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "beach"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3dc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "desert"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3dd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "island"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3de

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "park"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3df

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "stadium"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3db

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "classical_building"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "construction_site"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "homes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cityscape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3da

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "house_abandoned"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "house"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "house_with_garden"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "office"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "post_office"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "european_post_office"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hospital"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bank"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hotel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "love_hotel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "convenience_store"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "school"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "department_store"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ed

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "factory"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "japanese_castle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "european_castle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f492

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wedding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tokyo_tower"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "statue_of_liberty"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "church"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mosque"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "synagogue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shinto_shrine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "kaaba"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fountain"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f301

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "foggy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f303

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "night_with_stars"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f304

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sunrise_over_mountains"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f305

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sunrise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f306

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "city_dusk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f307

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "city_sunset"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f309

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bridge_at_night"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2668

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hotsprings"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "milky_way"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "carousel_horse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ferris_wheel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "roller_coaster"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f488

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "barber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "circus_tent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ad

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "performing_arts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "frame_photo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "art"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "slot_machine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f682

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "steam_locomotive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f683

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "railway_car"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f684

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bullettrain_side"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f685

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bullettrain_front"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f686

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "train2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f687

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "metro"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f688

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "light_rail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f689

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "station"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tram"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "monorail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mountain_railway"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "train"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "oncoming_bus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "trolleybus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f690

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "minibus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f691

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ambulance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f692

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fire_engine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f693

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "police_car"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f694

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "oncoming_police_car"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f695

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "taxi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f696

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "oncoming_taxi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f697

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "red_car"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f698

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "oncoming_automobile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f699

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blue_car"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "truck"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "articulated_lorry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tractor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bike"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scooter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "motor_scooter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "busstop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "motorway"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "railway_track"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fuelpump"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rotating_light"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "traffic_light"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vertical_traffic_light"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "construction"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "octagonal_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2693

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "anchor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sailboat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "canoe"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "speedboat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cruise_ship"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ferry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "motorboat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ship"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2708

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "airplane"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "airplane_small"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "airplane_departure"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "airplane_arriving"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ba

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "seat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f681

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "helicopter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "suspension_railway"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mountain_cableway"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "aerial_tramway"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f680

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rocket"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "satellite_orbital"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bellhop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "door"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sleeping_accommodation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "couch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "toilet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shower"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bath_tone1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bath_tone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bath_tone3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bath_tone4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bath_tone5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bathtub"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x231b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hourglass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hourglass_flowing_sand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x231a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "watch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "alarm_clock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "stopwatch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "timer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f570

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock12"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f567

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock1230"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f550

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock130"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f551

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock230"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f552

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock330"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f553

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock430"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f554

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f560

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock530"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f555

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock6"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f561

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock630"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f556

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock7"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f562

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock730"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f557

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock8"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f563

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock830"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f558

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock9"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f564

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock930"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f559

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock10"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f565

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock1030"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock11"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f566

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clock1130"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f311

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "new_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f312

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "waxing_crescent_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f313

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "first_quarter_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f314

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "waxing_gibbous_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f315

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "full_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f316

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "waning_gibbous_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f317

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "last_quarter_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f318

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "waning_crescent_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f319

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crescent_moon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "new_moon_with_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "first_quarter_moon_with_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "last_quarter_moon_with_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f321

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thermometer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2600

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sunny"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "full_moon_with_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "sun_with_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b50

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "star"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "star2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f320

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "stars"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2601

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cloud"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "partly_sunny"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26c8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "thunder_cloud_rain"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f324

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_sun_small_cloud"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f325

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_sun_cloud"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f326

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_sun_rain_cloud"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f327

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cloud_rain"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f328

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cloud_snow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f329

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cloud_lightning"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cloud_tornado"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wind_blowing_face"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f300

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cyclone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f308

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rainbow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f302

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "closed_umbrella"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2602

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "umbrella2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2614

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "umbrella"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "beach_umbrella"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "zap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2744

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "snowflake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2603

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "snowman2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "snowman"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2604

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "comet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f525

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fire"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "droplet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ocean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f383

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "jack_o_lantern"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f384

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "christmas_tree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f386

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fireworks"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f387

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sparkler"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2728

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sparkles"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f388

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "balloon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f389

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tada"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "confetti_ball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tanabata_tree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bamboo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dolls"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f390

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wind_chime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f391

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rice_scene"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f380

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ribbon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f381

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gift"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f397

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "reminder_ribbon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tickets"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "ticket"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f396

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "military_medal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "trophy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "medal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f947

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "first_place"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f948

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "second_place"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f949

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "third_place"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "soccer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "baseball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "basketball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "volleyball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "football"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rugby_football"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tennis"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "8ball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bowling"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cricket"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "field_hockey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hockey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ping_pong"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "badminton"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f94a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "boxing_glove"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f94b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "martial_arts_uniform"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f945

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "goal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3af

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "golf"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ice_skate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fishing_pole_and_fish"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "running_shirt_with_sash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ski"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "video_game"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f579

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "joystick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "game_die"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2660

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "spades"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2665

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hearts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2666

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "diamonds"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2663

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clubs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f0cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_joker"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f004

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mahjong"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "flower_playing_cards"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f507

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mute"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f508

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "speaker"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f509

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sound"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "loud_sound"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "loudspeaker"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mega"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "postal_horn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f514

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f515

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_bell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "musical_score"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "musical_note"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "notes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f399

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "microphone2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "level_slider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "control_knobs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "microphone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "headphones"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "radio"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "saxophone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "guitar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "musical_keyboard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ba

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "trumpet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "violin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f941

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "drum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "iphone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "calling"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x260e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "telephone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4de

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "telephone_receiver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4df

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pager"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "battery"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "electric_plug"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "computer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "desktop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "printer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2328

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "keyboard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mouse_three_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "minidisc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "floppy_disk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dvd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "movie_camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "film_frames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "projector"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ac

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clapper"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tv"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "camera_with_flash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "video_camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vhs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mag_right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "microscope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "telescope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "satellite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f56f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "candle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bulb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f526

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "flashlight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ee

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "izakaya_lantern"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "notebook_with_decorative_cover"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "closed_book"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "book"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "green_book"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blue_book"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "orange_book"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4da

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "books"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "notebook"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ledger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "page_with_curl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4dc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scroll"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "page_facing_up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "newspaper"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5de

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "newspaper2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bookmark_tabs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f516

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bookmark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "moneybag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "yen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dollar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "euro"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pound"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "money_with_wings"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "credit_card"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "currency_exchange"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heavy_dollar_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2709

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "envelope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "e-mail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "incoming_envelope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "envelope_with_arrow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "outbox_tray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "inbox_tray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mailbox"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mailbox_closed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mailbox_with_mail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ed

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mailbox_with_no_mail"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ee

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "postbox"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ballot_box"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pencil2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2712

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_nib"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pen_fountain"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pen_ballpoint"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "paintbrush"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crayon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4dd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pencil"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "briefcase"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "file_folder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "open_file_folder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5c2    # 1.79997E-40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dividers"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "calendar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "notepad_spiral"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "calendar_spiral"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "card_index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chart_with_upwards_trend"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chart_with_downwards_trend"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ca

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bar_chart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "clipboard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pushpin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "round_pushpin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "paperclip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f587

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "paperclips"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "straight_ruler"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "triangular_ruler"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2702

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scissors"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5c3    # 1.79998E-40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "card_box"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5c4    # 1.8E-40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "file_cabinet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wastebasket"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f512

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f513

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "unlock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "lock_with_ink_pen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f510

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "closed_lock_with_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f511

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5dd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "key2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f528

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hammer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2692

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hammer_pick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tools"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "dagger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2694

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crossed_swords"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gun"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bow_and_arrow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shield"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f527

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wrench"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f529

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nut_and_bolt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2699

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gear"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5dc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "compression"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2697

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "alembic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2696

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scales"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f517

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "chains"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f489

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "syringe"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pill"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ac

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "smoking"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "coffin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "urn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5ff

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "moyai"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "oil"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crystal_ball"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "shopping_cart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "atm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "put_litter_in_its_place"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "potable_water"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x267f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wheelchair"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mens"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ba

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "womens"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "restroom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "baby_symbol"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "passport_control"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "customs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "baggage_claim"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_luggage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "warning"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "children_crossing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26d4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_entry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_entry_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_bicycles"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ad

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_smoking"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6af

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "do_not_litter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "non-potable_water"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_pedestrians"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "no_mobile_phones"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "underage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2622

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "radioactive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2623

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "biohazard"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b06

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2197

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_upper_right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x27a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2198

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_lower_right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b07

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2199

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_lower_left"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b05

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_left"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2196

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_upper_left"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2195

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_up_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2194

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "left_right_arrow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x21a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "leftwards_arrow_with_hook"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x21aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_right_hook"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2934

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_heading_up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2935

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_heading_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f503

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrows_clockwise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f504

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrows_counterclockwise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f519

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "back"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "on"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "soon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "top"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6d0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "place_of_worship"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x269b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "atom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f549

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "om_symbol"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2721

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "star_of_david"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2638

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wheel_of_dharma"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x262f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "yin_yang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x271d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cross"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2626

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "orthodox_cross"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x262a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "star_and_crescent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x262e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "peace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "menorah"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "six_pointed_star"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2648

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "aries"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2649

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "taurus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "gemini"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cancer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "leo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "virgo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "libra"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "scorpius"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2650

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sagittarius"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2651

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "capricorn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2652

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "aquarius"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2653

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pisces"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ophiuchus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f500

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "twisted_rightwards_arrows"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f501

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "repeat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f502

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "repeat_one"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_forward"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fast_forward"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ed

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "track_next"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "play_pause"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_backward"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rewind"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ee

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "track_previous"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_up_small"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_double_up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_down_small"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "arrow_double_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "pause_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "stop_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "record_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eject"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cinema"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f505

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "low_brightness"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f506

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "high_brightness"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "signal_strength"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vibration_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "mobile_phone_off"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x267b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "recycle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4db

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "name_badge"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x269c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "fleur-de-lis"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f530

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "beginner"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f531

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "trident"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b55

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "o"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2705

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_check_mark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2611

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ballot_box_with_check"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2714

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heavy_check_mark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2716

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heavy_multiplication_x"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x274c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x274e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "negative_squared_cross_mark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2795

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heavy_plus_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2796

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heavy_minus_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2797

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "heavy_division_sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x27b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "curly_loop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x27bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "loop"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x303d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "part_alternation_mark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2733

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eight_spoked_asterisk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2734

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eight_pointed_black_star"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2747

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sparkle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x203c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "bangbang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2049

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "interrobang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2753

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "question"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2754

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "grey_question"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2755

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "grey_exclamation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2757

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "exclamation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3030

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "wavy_dash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xa9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "copyright"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "registered"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2122

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "tm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23

    const/16 v5, 0x20e3

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "hash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2a

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "asterisk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x30

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "zero"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x31

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "one"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x32

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "two"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x33

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "three"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x34

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "four"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x35

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "five"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x36

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "six"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x37

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "seven"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x38

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "eight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x39

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "nine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "keycap_ten"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f520

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "capital_abcd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f521

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "abcd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f523

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "symbols"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f524

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "abc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f170

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f18e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ab"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f171

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "b"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f191

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f192

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "cool"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f193

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "free"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2139

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "information_source"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f194

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x24c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "m"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f195

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "new"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f196

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ng"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f17e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "o2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f197

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f17f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "parking"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f198

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f199

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f19a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "vs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f201

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "koko"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f202

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "sa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f237

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u6708"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f236

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u6709"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f22f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u6307"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f250

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "ideograph_advantage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f239

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u5272"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f21a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u7121"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f232

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u7981"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f251

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "accept"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f238

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u7533"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f234

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u5408"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f233

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u7a7a"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3297

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "congratulations"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3299

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "secret"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f23a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u55b6"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f235

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "u6e80"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_small_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_small_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_medium_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_medium_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_medium_small_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fe

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_medium_small_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b1b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_large_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b1c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_large_square"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f536

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "large_orange_diamond"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f537

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "large_blue_diamond"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f538

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "small_orange_diamond"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f539

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "small_blue_diamond"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "small_red_triangle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "small_red_triangle_down"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "diamond_shape_with_a_dot_inside"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f518

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "radio_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f532

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_square_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f533

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_square_button"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "white_circle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "black_circle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f534

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "red_circle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f535

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "blue_circle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "checkered_flag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string/jumbo v2, "triangular_flag_on_post"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "crossed_flags"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "flag_black"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "flag_white"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f3

    const v5, 0x1f308

    filled-new-array {v2, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v2, "rainbow_flag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f1e6

    const v5, 0x1f1e8

    filled-new-array {v2, v5}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "flag_ac"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1e9

    filled-new-array {v2, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "flag_ad"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1ea

    filled-new-array {v2, v7}, [I

    move-result-object v8

    invoke-direct {v1, v8, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v8, "flag_ae"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    new-instance v1, Ljava/lang/String;

    const v8, 0x1f1eb

    filled-new-array {v2, v8}, [I

    move-result-object v8

    invoke-direct {v1, v8, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v8, "flag_af"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    new-instance v1, Ljava/lang/String;

    const v8, 0x1f1ec

    filled-new-array {v2, v8}, [I

    move-result-object v9

    invoke-direct {v1, v9, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v9, "flag_ag"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    new-instance v1, Ljava/lang/String;

    const v9, 0x1f1ee

    filled-new-array {v2, v9}, [I

    move-result-object v10

    invoke-direct {v1, v10, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v10, "flag_ai"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    new-instance v1, Ljava/lang/String;

    const v10, 0x1f1f1

    filled-new-array {v2, v10}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v11, "flag_al"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f1f2

    filled-new-array {v2, v11}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "flag_am"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f4

    filled-new-array {v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "flag_ao"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f6

    filled-new-array {v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "flag_aq"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f7

    filled-new-array {v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v12, "flag_ar"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f8

    filled-new-array {v2, v12}, [I

    move-result-object v13

    invoke-direct {v1, v13, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v13, "flag_as"

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    new-instance v1, Ljava/lang/String;

    const v13, 0x1f1f9

    filled-new-array {v2, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_at"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_au"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_aw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ax"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_az"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v14, v2}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_ba"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bb"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1e9

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bd"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v7}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_be"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1eb

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bf"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v8}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bg"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ed

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bh"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v9}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bi"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ef

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bj"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v10}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bl"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v11}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_bm"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1f3

    filled-new-array {v14, v15}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bn"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1f4

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bo"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1f6

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bq"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1f7

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_br"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v12}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bs"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v13}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bt"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1fb

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bv"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1fc

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bw"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1fe

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_by"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1ff

    filled-new-array {v14, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_bz"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v2}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_ca"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v5}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_cc"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1e9

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_cd"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1eb

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_cf"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v8}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_cg"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1ed

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_ch"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v9}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v4, "flag_ci"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1f0

    filled-new-array {v5, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ck"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cl"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_co"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cp"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cv"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cx"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cy"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v5, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_cz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_de"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_dg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1ef

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_dj"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_dk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_dm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_do"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1ff

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_dz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ea"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ec"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ee"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_eg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_eh"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_er"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_es"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_et"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_eu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_fi"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    const v15, 0x1f1ef

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_fj"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_fk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_fm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_fo"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_fr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ga"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v8, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gb"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gd"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ge"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gf"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gh"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gi"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gl"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v8, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gp"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gq"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gs"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gt"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_gy"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_hk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_hm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    const v15, 0x1f1f3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_hn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_hr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ht"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    const v15, 0x1f1fa

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_hu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ic"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_id"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ie"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_il"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_im"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v9, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_in"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_io"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_iq"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ir"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_is"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_it"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_je"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_jm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_jo"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    const v15, 0x1f1f5

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_jp"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    new-instance v1, Ljava/lang/String;

    filled-new-array {v4, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ke"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    new-instance v1, Ljava/lang/String;

    filled-new-array {v4, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v4, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kh"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    new-instance v1, Ljava/lang/String;

    filled-new-array {v4, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ki"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    new-instance v1, Ljava/lang/String;

    filled-new-array {v4, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_km"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v4, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v4, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kp"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v4, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v4, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v4, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ky"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v4, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_kz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_la"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v10, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lb"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lc"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_li"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ls"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lt"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_lv"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ly"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ma"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mc"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_md"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_me"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mf"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mh"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ml"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v11, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mo"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mp"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mq"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ms"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mt"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mv"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mx"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_my"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_mz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v14, v2}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_na"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v5}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_nc"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v7}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_ne"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1eb

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_nf"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v8}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_ng"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v9}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_ni"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v10}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_nl"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_no"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1f5

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_np"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_nr"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1fa

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v15, "flag_nu"

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ff

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_nz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_om"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pa"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pe"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    const v15, 0x1f1eb

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pf"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    const v15, 0x1f1ed

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ph"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pl"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    const v15, 0x1f1f3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ps"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v14, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pt"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    const v15, 0x1f1fc

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_pw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    const v15, 0x1f1fe

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_py"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v14, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_qa"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_re"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ro"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v14, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_rs"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    const v15, 0x1f1fa

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ru"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    const v15, 0x1f1fc

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_rw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sa"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v12, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sb"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sc"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sd"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_se"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sh"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_si"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sj"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sl"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v12, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_so"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ss"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_st"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sv"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sx"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sy"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v12, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_sz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ta"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tc"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_td"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tf"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_th"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tj"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tl"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v13, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_to"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tr"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tt"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tv"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tw"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v13, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_tz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v14, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ua"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v14, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ug"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_um"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v14, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_us"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    const v15, 0x1f1fe

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_uy"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    const v15, 0x1f1ff

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_uz"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v14, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_va"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v14, v5}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_vc"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ve"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v14, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_vg"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v14, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_vi"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    const v15, 0x1f1f3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_vn"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    const v15, 0x1f1fa

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_vu"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    const v15, 0x1f1eb

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_wf"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v14, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ws"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v14, v4}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_xk"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_ye"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v14, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_yt"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v14, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_za"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v14, "flag_zm"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    const v15, 0x1f1fc

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v6}, Ljava/lang/String;-><init>([III)V

    const-string v6, "flag_zw"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ff

    filled-new-array {v6}, [I

    move-result-object v6

    const/4 v14, 0x1

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_z"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fe

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_y"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fd

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_x"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fc

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_w"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_v"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_u"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_t"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_s"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_r"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f6

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_q"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_p"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f4

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_o"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f3

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_n"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_m"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v6, "regional_indicator_l"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    new-instance v1, Ljava/lang/String;

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_k"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1ef

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_j"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_i"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1ed

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_h"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_g"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1eb

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_f"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_e"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1e9

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_d"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    new-instance v1, Ljava/lang/String;

    filled-new-array {v5}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_c"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    new-instance v1, Ljava/lang/String;

    const v4, 0x1f1e7

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v4, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v4, "regional_indicator_b"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v14}, Ljava/lang/String;-><init>([III)V

    const-string v2, "regional_indicator_a"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
