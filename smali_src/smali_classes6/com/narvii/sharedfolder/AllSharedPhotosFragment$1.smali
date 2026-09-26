.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$1;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 3
    .line 4
    const-string v0, "Recent"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V

    .line 8
    return-void
.end method
