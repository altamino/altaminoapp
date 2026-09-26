.class Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    .line 17
    move-result v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    :goto_1
    return v0
.end method
