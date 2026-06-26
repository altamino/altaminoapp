.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$1;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$1;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$1;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$000(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$1;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$000(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method
