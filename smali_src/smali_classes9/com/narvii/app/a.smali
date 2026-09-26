.class public final synthetic Lcom/narvii/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/DrawerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/a;->a:Lcom/narvii/app/DrawerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/a;->a:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0, p1}, Lcom/narvii/app/DrawerActivity;->t(Lcom/narvii/app/DrawerActivity;Landroid/view/View;)V

    return-void
.end method
