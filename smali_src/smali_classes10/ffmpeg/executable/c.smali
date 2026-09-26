.class public final synthetic Lffmpeg/executable/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lffmpeg/executable/a$b;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lffmpeg/executable/a$b;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffmpeg/executable/c;->a:Lffmpeg/executable/a$b;

    iput p2, p0, Lffmpeg/executable/c;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lffmpeg/executable/c;->a:Lffmpeg/executable/a$b;

    iget v1, p0, Lffmpeg/executable/c;->b:F

    invoke-static {v0, v1}, Lffmpeg/executable/a$b;->a(Lffmpeg/executable/a$b;F)V

    return-void
.end method
