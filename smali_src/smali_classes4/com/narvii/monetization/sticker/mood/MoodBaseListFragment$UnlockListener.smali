.class abstract Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;
.super Ljava/lang/Object;
.source "SourceFile"

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

    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/monetization/sticker/mood/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;-><init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->t(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;->onUnlock()V

    .line 27
    return-void
.end method

.method abstract onUnlock()V
.end method
