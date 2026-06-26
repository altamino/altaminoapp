.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;

    invoke-direct {v0}, Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;-><init>()V

    sput-object v0, Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;->INSTANCE:Lcom/narvii/chat/input/-$$Lambda$MentionedEditText$aq_3cAvzOTua7Suoae-S1EToh5w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/narvii/chat/input/MentionedEditText$Range;

    check-cast p2, Lcom/narvii/chat/input/MentionedEditText$Range;

    invoke-static {p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->lambda$mentionUser$0(Lcom/narvii/chat/input/MentionedEditText$Range;Lcom/narvii/chat/input/MentionedEditText$Range;)I

    move-result p1

    return p1
.end method
