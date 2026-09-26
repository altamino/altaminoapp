.class public final synthetic Lcom/narvii/account/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/SignUpAddProfileFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/u0;->a:Lcom/narvii/account/SignUpAddProfileFragment;

    iput-object p2, p0, Lcom/narvii/account/u0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    .line 1
    move-object v0, p0

    iget-object v1, v0, Lcom/narvii/account/u0;->a:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object v2, v0, Lcom/narvii/account/u0;->b:Landroid/view/View;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/narvii/account/SignUpAddProfileFragment;->s(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method
