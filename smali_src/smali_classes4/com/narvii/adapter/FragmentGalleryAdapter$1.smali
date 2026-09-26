.class Lcom/narvii/adapter/FragmentGalleryAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/adapter/FragmentGalleryAdapter;
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$1;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter$1;->this$0:Lcom/narvii/adapter/FragmentGalleryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPage()V

    .line 6
    return-void
.end method
