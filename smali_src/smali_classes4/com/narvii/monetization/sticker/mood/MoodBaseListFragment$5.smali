.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->waitingRequestTaskName:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->y(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Ljava/lang/String;)V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$5;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->waitingRequestTaskName:Ljava/lang/String;

    .line 19
    :cond_1
    return-void
.end method
