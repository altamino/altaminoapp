.class Lcom/narvii/app/DrawerActivity$4;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/DrawerActivity;->initDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$4;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$4;->this$0:Lcom/narvii/app/DrawerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/DrawerActivity;->openDrawer(Z)V

    return-void
.end method
