.class abstract Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UnlockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$1;)V
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;-><init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 536
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$600(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    .line 537
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->onUnlock()V

    return-void
.end method

.method abstract onUnlock()V
.end method
