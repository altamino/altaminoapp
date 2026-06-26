.class Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;
.super Lcom/narvii/list/StaticViewAdapter;
.source "GlobalRecommendedUsersFragment.java"


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

    .line 54
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    iget-object v0, v0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
