.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 454
    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
