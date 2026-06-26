.class Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;->this$1:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 336
    const-class p1, Lcom/narvii/achievements/AllRanksFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "My Achievements Page"

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;->this$1:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
