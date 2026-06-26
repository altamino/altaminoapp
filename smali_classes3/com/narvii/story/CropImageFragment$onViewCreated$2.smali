.class final Lcom/narvii/story/CropImageFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "CropImageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/CropImageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/CropImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/CropImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/CropImageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/narvii/story/CropImageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/CropImageFragment;

    invoke-static {p1}, Lcom/narvii/story/CropImageFragment;->access$toPickCoverImage(Lcom/narvii/story/CropImageFragment;)V

    return-void
.end method
