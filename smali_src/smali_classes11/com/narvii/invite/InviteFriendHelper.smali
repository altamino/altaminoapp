.class public Lcom/narvii/invite/InviteFriendHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/invite/InviteFriendHelper;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 11
    return-void
.end method


# virtual methods
.method public getSharePayload(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/invite/Invitation;)Lcom/narvii/share/SharePayload;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p2, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    .line 9
    iget-object v1, p3, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    sget v2, Lcom/narvii/lib/R$string;->share_community_invitation_text_template:I

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 25
    .line 26
    aput-object p2, v3, v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p1, "\n"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object p1, p3, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 50
    return-object v0
.end method
