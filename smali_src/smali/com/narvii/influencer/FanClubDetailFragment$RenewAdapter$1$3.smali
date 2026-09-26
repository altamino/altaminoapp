.class Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;->this$2:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;->this$2:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 8
    return-void
.end method
