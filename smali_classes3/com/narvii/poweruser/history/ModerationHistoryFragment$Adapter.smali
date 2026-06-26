.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;
.super Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;
.source "ModerationHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 88
    instance-of v0, p3, Lcom/narvii/poweruser/history/ModerationHistory;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_3

    .line 90
    check-cast p3, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 91
    iget p1, p3, Lcom/narvii/poweruser/history/ModerationHistory;->moderationLevel:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 92
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b021c

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09002c

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 95
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance p4, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;

    invoke-direct {p4, p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p3, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    iget-object p3, p3, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f0eae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :catch_0
    :goto_0
    return v2

    .line 116
    :cond_3
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090764

    if-eq v3, v4, :cond_7

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0900e4

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090b47

    if-ne v3, v4, :cond_8

    .line 121
    check-cast p3, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 122
    iget-object p1, p3, Lcom/narvii/poweruser/history/ModerationHistory;->refObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-array p2, v2, [Ljava/lang/String;

    const-string p3, "uid"

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_6

    .line 124
    const-class p1, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "id"

    .line 125
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return v2

    .line 117
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast p3, Lcom/narvii/poweruser/history/ModerationHistory;

    iget-object p2, p3, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 131
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
