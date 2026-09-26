.class public Lcom/narvii/video/model/ChannelActionError;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/model/ChannelActionError;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/video/model/ChannelActionError;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/video/model/ChannelActionError;

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/video/model/ChannelActionError;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/video/model/ChannelActionError;->ERROR_REQUEST_TO_BE_PRESENTER:Lcom/narvii/video/model/ChannelActionError;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/video/model/ChannelActionError;

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/video/model/ChannelActionError;-><init>(I)V

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/video/model/ChannelActionError;->ERROR_EXITED_ANOTHER_CHANNEL:Lcom/narvii/video/model/ChannelActionError;

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    iput-object p2, p0, Lcom/narvii/video/model/ChannelActionError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/narvii/video/model/ChannelActionError;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/video/model/ChannelActionError;

    .line 13
    .line 14
    iget p1, p1, Lcom/narvii/video/model/ChannelActionError;->code:I

    .line 15
    .line 16
    if-ne v1, p1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/ChannelActionError;->message:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "error ("

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/video/model/ChannelActionError;->code:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ")"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/model/ChannelActionError;->message()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
