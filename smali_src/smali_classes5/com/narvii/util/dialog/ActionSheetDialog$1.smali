.class Lcom/narvii/util/dialog/ActionSheetDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->e(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/util/dialog/ActionSheetDialog;->blurReady:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->c:I

    .line 17
    .line 18
    add-int/lit8 v1, v0, 0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->c:I

    .line 21
    const/4 v1, 0x4

    .line 22
    .line 23
    if-ge v0, v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$1;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->a(Lcom/narvii/util/dialog/ActionSheetDialog;)Landroid/widget/ImageView;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method
