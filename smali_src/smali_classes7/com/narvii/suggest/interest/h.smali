.class public final synthetic Lcom/narvii/suggest/interest/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/suggest/interest/h;->a:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/narvii/suggest/interest/h;->a:I

    invoke-static {v0, p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->y(ILandroid/content/DialogInterface;)V

    return-void
.end method
