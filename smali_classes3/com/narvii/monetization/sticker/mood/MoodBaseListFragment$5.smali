.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

# interfaces
.implements Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 237
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 241
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->waitingRequestTaskName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$200(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->waitingRequestTaskName:Ljava/lang/String;

    :cond_1
    return-void
.end method
