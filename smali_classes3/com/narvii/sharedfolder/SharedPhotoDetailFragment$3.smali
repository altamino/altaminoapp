.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$3;
.super Lcom/narvii/widget/InputDialog;
.source "SharedPhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Landroid/content/Context;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/widget/InputDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowEditEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
