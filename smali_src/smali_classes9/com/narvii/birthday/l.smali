.class public final synthetic Lcom/narvii/birthday/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/birthday/EnterBirthdayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/birthday/EnterBirthdayFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/birthday/l;->a:Lcom/narvii/birthday/EnterBirthdayFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/birthday/l;->a:Lcom/narvii/birthday/EnterBirthdayFragment;

    invoke-static {v0, p1}, Lcom/narvii/birthday/EnterBirthdayFragment;->o(Lcom/narvii/birthday/EnterBirthdayFragment;Landroid/view/View;)V

    return-void
.end method
