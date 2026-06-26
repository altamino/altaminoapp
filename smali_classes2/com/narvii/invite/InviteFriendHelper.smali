.class public Lcom/narvii/invite/InviteFriendHelper;
.super Ljava/lang/Object;
.source "InviteFriendHelper.java"


# instance fields
.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/InviteFriendHelper;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public getSharePayload(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/invite/Invitation;)Lcom/narvii/share/SharePayload;
    .locals 5

    .line 25
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 26
    iput-object p2, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 27
    iget-object v1, p3, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/narvii/lib/R$string;->share_community_invitation_text_template:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    return-object v0
.end method
