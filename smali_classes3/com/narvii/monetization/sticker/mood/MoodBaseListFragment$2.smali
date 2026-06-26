.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$2;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 142
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$2;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$2;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onMoodClicked(Landroid/view/View;)V

    return-void
.end method
