package net.gcl.blog.core.shiro;

import java.util.Map;

/**
 * @version 1.0
 * @date 2019/2/11 10:07
 * @since 1.8
 */
public interface ShiroService {

    Map<String, String> loadFilterChainDefinitions();

    void updatePermission();

    void reloadAuthorizingByRoleId(Long roleId);
}
