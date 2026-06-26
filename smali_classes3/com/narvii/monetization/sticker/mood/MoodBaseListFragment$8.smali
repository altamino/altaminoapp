.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$8;
.super Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;
.source "MoodBaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->updateLockViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V
    .locals 1

    .line 557
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$8;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$UnlockListener;-><init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$1;)V

    return-void
.end method


# virtual methods
.method onUnlock()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$8;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$900(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    return-void
.end method
