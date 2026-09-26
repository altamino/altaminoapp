.class public final synthetic Lcom/narvii/suggest/interest/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/suggest/interest/i;->a:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/suggest/interest/i;->a:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v0, p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->w(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Landroid/view/View;)V

    return-void
.end method
