.class Lcom/narvii/incubator/LanguageChooseDialog$1;
.super Ljava/lang/Object;
.source "LanguageChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/incubator/LanguageChooseDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/incubator/LanguageChooseDialog;


# direct methods
.method constructor <init>(Lcom/narvii/incubator/LanguageChooseDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$1;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$1;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/narvii/incubator/LanguageChooseDialog$1;->this$0:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method
