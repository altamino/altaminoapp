.class Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "CheckinRegionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/CheckinRegionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/CheckinRegionFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 187
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    const-string p1, "Leaderboard"

    .line 189
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 194
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-profile"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string/jumbo v0, "type"

    const-string v1, "check-in"

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 196
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-static {v0}, Lcom/narvii/leaderboard/CheckinRegionFragment;->access$000(Lcom/narvii/leaderboard/CheckinRegionFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "minStreak"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 197
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-static {v0}, Lcom/narvii/leaderboard/CheckinRegionFragment;->access$100(Lcom/narvii/leaderboard/CheckinRegionFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxStreak"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 198
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 204
    instance-of p3, p1, Lcom/narvii/model/User;

    if-eqz p3, :cond_0

    const p3, 0x7f09021a

    .line 205
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/narvii/model/User;

    iget p1, p1, Lcom/narvii/model/User;->consecutiveCheckInDays:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0467

    return v0
.end method
