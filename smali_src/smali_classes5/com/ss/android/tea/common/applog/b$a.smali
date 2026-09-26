.class Lcom/ss/android/tea/common/applog/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/tea/common/applog/b;->S(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/ss/android/tea/common/applog/b;


# direct methods
.method constructor <init>(Lcom/ss/android/tea/common/applog/b;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/b$a;->d:Lcom/ss/android/tea/common/applog/b;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/android/tea/common/applog/b$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/ss/android/tea/common/applog/b$a;->b:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/ss/android/tea/common/applog/b$a;->c:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b$a;->d:Lcom/ss/android/tea/common/applog/b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/b$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/ss/android/tea/common/applog/b$a;->b:Z

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/ss/android/tea/common/applog/b$a;->c:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/tea/common/applog/b;->T(Ljava/lang/String;ZZ)Z

    .line 12
    return-void
.end method
