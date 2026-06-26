.class final Lcom/narvii/story/StoryDownloadHelper$downloadStory$2;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;->downloadStory(Lcom/narvii/model/Blog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$2;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {p1}, Lcom/narvii/story/StoryDownloadHelper;->getOnActionFinished()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
