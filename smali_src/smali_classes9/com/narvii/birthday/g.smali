.class public final synthetic Lcom/narvii/birthday/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/birthday/ConfirmBirthdayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/birthday/g;->a:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/birthday/g;->a:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    invoke-static {v0, p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->p(Lcom/narvii/birthday/ConfirmBirthdayFragment;Landroid/view/View;)V

    return-void
.end method
