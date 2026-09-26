.class public Lcom/bytedance/tea/common/utility/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/common/utility/c/a$c;,
        Lcom/bytedance/tea/common/utility/c/a$a;,
        Lcom/bytedance/tea/common/utility/c/a$b;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/tea/common/utility/c/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bytedance/tea/common/utility/c/a$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bytedance/tea/common/utility/c/a$c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/tea/common/utility/c/a;->a:Lcom/bytedance/tea/common/utility/c/a$b;

    .line 8
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/bytedance/tea/common/utility/c/a;->a:Lcom/bytedance/tea/common/utility/c/a$b;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0}, Lcom/bytedance/tea/common/utility/c/a$b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 9
    return-void
.end method
