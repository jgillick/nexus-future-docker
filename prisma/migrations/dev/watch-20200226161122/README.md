# Migration `watch-20200226161122`

This migration has been generated by Jeremy Gillick at 2/26/2020, 4:11:23 PM.
You can check out the [state of the schema](./schema.prisma) after the migration.

## Database Steps

```sql
CREATE TABLE `open-ostrich`.`World` (
    `id` int NOT NULL  AUTO_INCREMENT,
    `name` varchar(191) NOT NULL DEFAULT '' ,
    `population` Decimal(65,30) NOT NULL DEFAULT 0 ,
    PRIMARY KEY (`id`)
) 
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci

CREATE TABLE `open-ostrich`.`Moon` (
    `id` int NOT NULL  ,
    `name` varchar(191) NOT NULL DEFAULT '' ,
    `world` int NOT NULL ,
    PRIMARY KEY (`id`)
) 
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci

CREATE UNIQUE INDEX `World.name` ON `open-ostrich`.`World`(`name`)

ALTER TABLE `open-ostrich`.`Moon` ADD FOREIGN KEY (`world`) REFERENCES `open-ostrich`.`World`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
```

## Changes

```diff
diff --git schema.prisma schema.prisma
migration ..watch-20200226161122
--- datamodel.dml
+++ datamodel.dml
@@ -1,0 +1,21 @@
+datasource db {
+  provider = "mysql"
+  url      = "mysql://root:password@localhost:33061/open-ostrich"
+}
+
+generator prisma_client {
+  provider = "prisma-client-js"
+}
+
+model World {
+  id         Int    @id @default(autoincrement())
+  name       String @unique
+  population Float
+  moons      Moon[]
+}
+
+model Moon {
+   id    Int    @id
+   name  String
+   world World
+}
```


