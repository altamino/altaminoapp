.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;
.super Ljava/lang/Object;
.source "AllSharedPhotosFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    const-string v0, "Recent"

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V

    return-void
.end method
