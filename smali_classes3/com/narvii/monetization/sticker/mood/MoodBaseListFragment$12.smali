.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$12;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

# interfaces
.implements Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->unlockRate()V
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

    .line 627
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$12;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$12;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    const-string v1, "reviewUs"

    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$1300(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Ljava/lang/String;)V

    return-void
.end method
