.class Lcom/narvii/media/MediaPickerFragment$5$1$1;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment$5$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/media/MediaPickerFragment$5$1;

.field final synthetic val$invalidLinkDialog:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1$1;->this$2:Lcom/narvii/media/MediaPickerFragment$5$1;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$5$1$1;->val$invalidLinkDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 823
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1$1;->val$invalidLinkDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method
