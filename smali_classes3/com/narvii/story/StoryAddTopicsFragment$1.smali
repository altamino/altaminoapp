.class Lcom/narvii/story/StoryAddTopicsFragment$1;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryAddTopicsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$1;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$1;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->hideKeyBoard()V

    const/4 p1, 0x0

    return p1
.end method
