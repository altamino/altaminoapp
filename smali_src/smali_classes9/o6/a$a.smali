.class public Lo6/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lo6/a$a;->a:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lo6/a$a;->b:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lo6/a$a;->a:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lo6/a$a;->b:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lo6/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    return-void
.end method
