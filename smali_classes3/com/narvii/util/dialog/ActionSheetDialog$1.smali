.class Lcom/narvii/util/dialog/ActionSheetDialog$1;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic this$0:Lcom/narvii/util/dialog/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->access$000(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-boolean v0, v0, Lcom/narvii/util/dialog/ActionSheetDialog;->blurReady:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->c:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 154
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-static {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->access$100(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
