.class Lcom/narvii/adapter/FragmentGalleryAdapter$3;
.super Ljava/lang/Object;
.source "FragmentGalleryAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/adapter/FragmentGalleryAdapter;->createErrorFragment()Landroid/support/v4/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/adapter/FragmentGalleryAdapter;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$3;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$3;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPage()V

    return-void
.end method
