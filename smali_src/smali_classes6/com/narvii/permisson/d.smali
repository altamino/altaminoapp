.class public final synthetic Lcom/narvii/permisson/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/permisson/NVPermission;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/permisson/NVPermission;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/permisson/d;->a:Lcom/narvii/permisson/NVPermission;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/permisson/d;->a:Lcom/narvii/permisson/NVPermission;

    invoke-static {v0, p1}, Lcom/narvii/permisson/NVPermission;->b(Lcom/narvii/permisson/NVPermission;Ljava/lang/Object;)V

    return-void
.end method
