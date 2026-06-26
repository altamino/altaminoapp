.class Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment$1;
.super Ljava/lang/Object;
.source "FragmentGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment$1;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 359
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment$1;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;

    iget-object p1, p1, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;->errorRetryCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 360
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
