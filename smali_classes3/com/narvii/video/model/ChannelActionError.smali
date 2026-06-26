.class public Lcom/narvii/video/model/ChannelActionError;
.super Ljava/lang/Object;
.source "ChannelActionError.java"


# static fields
.field public static final ERROR_EXITED_ANOTHER_CHANNEL:Lcom/narvii/video/model/ChannelActionError;

.field public static final ERROR_REQUEST_TO_BE_PRESENTER:Lcom/narvii/video/model/ChannelActionError;

.field public static final LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/narvii/video/model/ChannelActionError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/narvii/video/model/ChannelActionError;-><init>(I)V

    sput-object v0, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    .line 9
    new-instance v0, Lcom/narvii/video/model/ChannelActionError;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/narvii/video/model/ChannelActionError;-><init>(I)V

    sput-object v0, Lcom/narvii/video/model/ChannelActionError;->ERROR_REQUEST_TO_BE_PRESENTER:Lcom/narvii/video/model/ChannelActionError;

    .line 10
    new-instance v0, Lcom/narvii/video/model/ChannelActionError;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/narvii/video/model/ChannelActionError;-><init>(I)V

    sput-object v0, Lcom/narvii/video/model/ChannelActionError;->ERROR_EXITED_ANOTHER_CHANNEL:Lcom/narvii/video/model/ChannelActionError;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    .line 21
    iput-object p2, p0, Lcom/narvii/video/model/ChannelActionError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/narvii/video/model/ChannelActionError;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/narvii/video/model/ChannelActionError;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
