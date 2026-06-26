.class Lcom/narvii/influencer/FanClubDetailFragment$1;
.super Ljava/lang/Object;
.source "FanClubDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubDetailFragment;->deleteWhenClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$1;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$1;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$1;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
