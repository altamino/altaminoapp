.class Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;
.super Ljava/lang/Object;
.source "FanClubDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;->this$2:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 341
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;->this$2:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method
