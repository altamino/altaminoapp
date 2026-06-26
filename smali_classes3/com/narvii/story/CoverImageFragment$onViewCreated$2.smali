.class final Lcom/narvii/story/CoverImageFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "CoverImageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CoverImageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/CoverImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$onSwitchTabCustom(Lcom/narvii/story/CoverImageFragment;)V

    .line 191
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/CoverImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CoverImageFragment;->access$updateCustomTabState(Lcom/narvii/story/CoverImageFragment;)V

    return-void
.end method
