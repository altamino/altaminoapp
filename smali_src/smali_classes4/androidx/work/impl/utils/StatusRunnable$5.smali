.class Landroidx/work/impl/utils/StatusRunnable$5;
.super Landroidx/work/impl/utils/StatusRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/utils/StatusRunnable<",
        "Ljava/util/List<",
        "Landroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$querySpec:Landroidx/work/WorkQuery;

.field final synthetic val$workManager:Landroidx/work/impl/WorkManagerImpl;


# virtual methods
.method bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable$5;->b()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$5;->val$workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->p()Landroidx/work/impl/WorkDatabase;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->I()Landroidx/work/impl/model/RawWorkInfoDao;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable$5;->val$querySpec:Landroidx/work/WorkQuery;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/work/impl/utils/RawQueries;->b(Landroidx/work/WorkQuery;)Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroidx/work/impl/model/RawWorkInfoDao;->a(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Ljava/util/List;

    .line 29
    return-object v0
.end method
