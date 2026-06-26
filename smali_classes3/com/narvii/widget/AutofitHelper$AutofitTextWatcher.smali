.class Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/AutofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutofitTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/AutofitHelper;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/AutofitHelper;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;->this$0:Lcom/narvii/widget/AutofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/AutofitHelper;Lcom/narvii/widget/AutofitHelper$1;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lcom/narvii/widget/AutofitHelper;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 528
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;->this$0:Lcom/narvii/widget/AutofitHelper;

    invoke-static {p1}, Lcom/narvii/widget/AutofitHelper;->access$200(Lcom/narvii/widget/AutofitHelper;)V

    return-void
.end method
